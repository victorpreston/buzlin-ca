import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:demand/app_constants.dart';
import 'package:demand/application/booking/booking_bloc.dart';
import 'package:demand/application/cart/cart_bloc.dart';
import 'package:demand/application/main/main_bloc.dart';
import 'package:demand/application/master/master_bloc.dart';
import 'package:demand/application/notification/notification_bloc.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/application/shop/shop_bloc.dart';
import 'package:demand/domain/di/dependency_manager.dart';
import 'package:demand/domain/model/model/location_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/firebase/firebase_service.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/pages/booking/booking_list.dart';
import 'package:demand/presentation/pages/cart/cart_page.dart';
import 'package:demand/presentation/pages/home/home_one/home_one_page.dart';
import 'package:demand/presentation/pages/home/home_page.dart';
import 'package:demand/presentation/pages/home/home_three/home_three_page.dart';
import 'package:demand/presentation/pages/home/home_two/home_two_page.dart';
import 'package:demand/presentation/pages/like/like_page.dart';
import 'package:demand/presentation/pages/search/main_seach_page.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';

import '../drawer/drawer_page.dart';
import 'widgets/bottom_item.dart';
import 'widgets/bottom_one_item.dart';
import 'widgets/bottom_two_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final isLtr = LocalStorage.getLangLtr();
  Timer? timer;
  LocationPermission? check;

  List<IndexedStackChild> list = [
    IndexedStackChild(
        child: AppHelpers.getType() == 0
            ? const HomePage()
            : AppHelpers.getType() == 1
                ? const HomeOnePage()
                : AppHelpers.getType() == 2
                    ? const HomeTwoPage()
                    : const HomeThreePage()),
    IndexedStackChild(child: const MainSearchPage()),
    IndexedStackChild(child: const BookingListPage(), preload: true),
    IndexedStackChild(child: const LikePage()),
    IndexedStackChild(child: const CartPage(), preload: true),
  ];

  Future<void> getMyLocation() async {
    check = await Geolocator.checkPermission();

    if (check == LocationPermission.denied ||
        check == LocationPermission.deniedForever) {
      check = await Geolocator.requestPermission();
      if (check != LocationPermission.denied &&
          check != LocationPermission.deniedForever) {
        var loc = await Geolocator.getCurrentPosition();
        LocalStorage.setLatLong(
            LocationModel(latitude: loc.latitude, longitude: loc.longitude));
      }
    } else {
      if (check != LocationPermission.deniedForever) {
        var loc = await Geolocator.getCurrentPosition();

        LocalStorage.setLatLong(
            LocationModel(latitude: loc.latitude, longitude: loc.longitude));
      }
    }
  }

  @override
  void initState() {
    getMyLocation();
    if (LocalStorage.getToken().isNotEmpty) {
      userRepository.getProfileDetails(context);
      settingsRepository.getAdminInfo();
      productsRepository.getProductsByIds(LocalStorage.getLikedProductsList());
      addressRepository.showWareHouse();
      if (LocalStorage.getToken().isNotEmpty) {
        timer = Timer.periodic(
            Duration(seconds: AppConstants.timeRefresh.inSeconds), (Timer t) {
          context
              .read<NotificationBloc>()
              .add(NotificationEvent.fetchCount(context: context));
        });
      }
    }
    FirebaseService.initDynamicLinks(context, isMain: true);
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      drawer: (colors) => Drawer(
        backgroundColor: colors.transparent,
        child: const DrawerPage(),
      ),
      body: (colors) => BlocBuilder<MainBloc, MainState>(
        buildWhen: (l, n) {
          return l.selectIndex != n.selectIndex;
        },
        builder: (context, state) {
          return ProsteIndexedStack(
            index: state.selectIndex,
            children: list,
          );
        },
      ),
      floatingButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingButton: (colors) => AppHelpers.getType() == 1
          ? _bottomNavigationBarOne(colors)
          : AppHelpers.getType() == 2
              ? _bottomNavigationBarTwo(colors)
              : AppHelpers.getType() == 3
                  ? const SizedBox.shrink()
                  : _bottomNavigationBar(colors),
      bottomNavigationBar: (colors) => AppHelpers.getType() == 3
          ? _bottomNavigationBarThree(colors)
          : const SizedBox.shrink(),
    );
  }

  Widget _bottomNavigationBar(CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 56.r),
      child: Container(
        height: 60.r,
        decoration: BoxDecoration(
            color: colors.bottomBarColor,
            borderRadius: BorderRadius.all(Radius.circular(100.r))),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.r,
            right: 16.r,
          ),
          child: BlocBuilder<MainBloc, MainState>(
            buildWhen: (l, n) {
              return l.selectIndex != n.selectIndex;
            },
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomItem(
                      isActive: state.selectIndex == 0,
                      selectIcon: "assets/svg/selectHome.svg",
                      icon: "assets/svg/home.svg",
                      onTap: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 0));
                      }),
                  BottomItem(
                      isActive: state.selectIndex == 1,
                      selectIcon: "assets/svg/selectSearch.svg",
                      icon: "assets/svg/search.svg",
                      onTap: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 1));
                      }),
                  BottomItem(
                      isActive: state.selectIndex == 2,
                      selectIcon: "assets/svg/selectCalendar.svg",
                      icon: "assets/svg/calendar.svg",
                      onTap: () {
                        if (LocalStorage.getToken().isEmpty) {
                          AppRoute.goLogin(context);
                          return;
                        }
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 2));
                        context.read<BookingBloc>().add(
                            BookingEvent.fetchBookUpcoming(
                                context: context, isRefresh: true));
                        context.read<BookingBloc>().add(
                            BookingEvent.fetchBookPast(
                                context: context, isRefresh: true));
                      }),
                  BottomItem(
                      isActive: state.selectIndex == 3,
                      selectIcon: "assets/svg/selectLike.svg",
                      icon: "assets/svg/like.svg",
                      onTap: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 3));
                        context.read<ProductBloc>().add(
                            ProductEvent.fetchLikeProduct(context: context));
                        context
                            .read<ShopBloc>()
                            .add(ShopEvent.fetchLikeShops(context: context));
                        context.read<MasterBloc>().add(
                            MasterEvent.fetchLikeMasters(context: context));
                      }),
                  if (AppHelpers.getProductsEnabled())
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, stateCart) {
                        return BottomItem(
                            bagCount: LocalStorage.getCartList()
                                .where((element) => element.count > 0)
                                .length,
                            isActive: state.selectIndex == 4,
                            selectIcon: "assets/svg/selectBag.svg",
                            icon: "assets/svg/bag.svg",
                            onTap: () {
                              context.read<CartBloc>().add(CartEvent.insertCart(
                                    context: context,
                                    onSuccess: () {
                                      if (LocalStorage.getToken().isNotEmpty) {
                                        context.read<CartBloc>().add(
                                            CartEvent.calculateCartWithCoupon(
                                                context: context));
                                      }

                                      context.read<ProductBloc>().add(
                                          const ProductEvent.updateState());
                                    },
                                  ));
                              context
                                  .read<MainBloc>()
                                  .add(const MainEvent.changeIndex(index: 4));
                            });
                      },
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBarTwo(CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: BlurWrap(
        radius: BorderRadius.all(Radius.circular(50.r)),
        child: Container(
          height: 70.r,
          padding: EdgeInsets.symmetric(horizontal: 4.r),
          decoration: BoxDecoration(
              color: colors.icon.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(50.r))),
          child: BlocBuilder<MainBloc, MainState>(
            buildWhen: (l, n) {
              return l.selectIndex != n.selectIndex;
            },
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomTwoItem(
                    isActive: state.selectIndex == 0,
                    icon: "assets/svg/home1.svg",
                    onTap: () {
                      context
                          .read<MainBloc>()
                          .add(const MainEvent.changeIndex(index: 0));
                    },
                    colors: colors,
                  ),
                  BottomTwoItem(
                      isActive: state.selectIndex == 1,
                      colors: colors,
                      icon: "assets/svg/service1.svg",
                      onTap: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 1));
                      }),
                  BottomTwoItem(
                      isActive: state.selectIndex == 2,
                      colors: colors,
                      icon: "assets/svg/booking1.svg",
                      onTap: () {
                        if (LocalStorage.getToken().isEmpty) {
                          AppRoute.goLogin(context);
                          return;
                        }
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 2));
                        context.read<BookingBloc>().add(
                            BookingEvent.fetchBookUpcoming(
                                context: context, isRefresh: true));
                        context.read<BookingBloc>().add(
                            BookingEvent.fetchBookPast(
                                context: context, isRefresh: true));
                      }),
                  if (AppHelpers.getProductsEnabled())
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, stateCart) {
                        return BottomTwoItem(
                            bagCount: LocalStorage.getCartList()
                                .where((element) => element.count > 0)
                                .length,
                            isActive: state.selectIndex == 4,
                            colors: colors,
                            icon: "assets/svg/bag1.svg",
                            onTap: () {
                              context.read<CartBloc>().add(CartEvent.insertCart(
                                    context: context,
                                    onSuccess: () {
                                      if (LocalStorage.getToken().isNotEmpty) {
                                        context.read<CartBloc>().add(
                                            CartEvent.calculateCartWithCoupon(
                                                context: context));
                                      }

                                      context.read<ProductBloc>().add(
                                          const ProductEvent.updateState());
                                    },
                                  ));
                              context
                                  .read<MainBloc>()
                                  .add(const MainEvent.changeIndex(index: 4));
                            });
                      },
                    ),
                  BottomTwoItem(
                      colors: colors,
                      isActive: state.selectIndex == 5,
                      icon: "assets/svg/profile1.svg",
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBarOne(CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: BlurWrap(
        radius: BorderRadius.all(Radius.circular(20.r)),
        child: Container(
          height: 82.r,
          decoration: BoxDecoration(
              color: colors.textWhite.withOpacity(0.8),
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.r,
              vertical: 20.r,
            ),
            child: BlocBuilder<MainBloc, MainState>(
              buildWhen: (l, n) {
                return l.selectIndex != n.selectIndex;
              },
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomOneItem(
                      isActive: state.selectIndex == 0,
                      name: AppHelpers.getTranslation(TrKeys.home),
                      icon: "assets/svg/home1.svg",
                      onTap: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.changeIndex(index: 0));
                      },
                      colors: colors,
                    ),
                    BottomOneItem(
                        isActive: state.selectIndex == 1,
                        name: AppHelpers.getTranslation(TrKeys.service),
                        icon: "assets/svg/service1.svg",
                        colors: colors,
                        onTap: () {
                          context
                              .read<MainBloc>()
                              .add(const MainEvent.changeIndex(index: 1));
                        }),
                    BottomOneItem(
                        isActive: state.selectIndex == 2,
                        colors: colors,
                        name: AppHelpers.getTranslation(TrKeys.booking),
                        icon: "assets/svg/booking1.svg",
                        onTap: () {
                          if (LocalStorage.getToken().isEmpty) {
                            AppRoute.goLogin(context);
                            return;
                          }
                          context
                              .read<MainBloc>()
                              .add(const MainEvent.changeIndex(index: 2));
                          context.read<BookingBloc>().add(
                              BookingEvent.fetchBookUpcoming(
                                  context: context, isRefresh: true));
                          context.read<BookingBloc>().add(
                              BookingEvent.fetchBookPast(
                                  context: context, isRefresh: true));
                        }),
                    BottomOneItem(
                        isActive: state.selectIndex == 3,
                        name: AppHelpers.getTranslation(TrKeys.like),
                        icon: "assets/svg/like.svg",
                        colors: colors,
                        onTap: () {
                          context
                              .read<MainBloc>()
                              .add(const MainEvent.changeIndex(index: 3));
                          context.read<ProductBloc>().add(
                              ProductEvent.fetchLikeProduct(context: context));
                          context
                              .read<ShopBloc>()
                              .add(ShopEvent.fetchLikeShops(context: context));
                          context.read<MasterBloc>().add(
                              MasterEvent.fetchLikeMasters(context: context));
                        }),
                    if (AppHelpers.getProductsEnabled())
                      BlocBuilder<CartBloc, CartState>(
                        builder: (context, stateCart) {
                          return BottomOneItem(
                              bagCount: LocalStorage.getCartList()
                                  .where((element) => element.count > 0)
                                  .length,
                              isActive: state.selectIndex == 4,
                              name: AppHelpers.getTranslation(TrKeys.bag),
                              icon: "assets/svg/bag1.svg",
                              colors: colors,
                              onTap: () {
                                context
                                    .read<CartBloc>()
                                    .add(CartEvent.insertCart(
                                      context: context,
                                      onSuccess: () {
                                        if (LocalStorage.getToken()
                                            .isNotEmpty) {
                                          context.read<CartBloc>().add(
                                              CartEvent.calculateCartWithCoupon(
                                                  context: context));
                                        }

                                        context.read<ProductBloc>().add(
                                            const ProductEvent.updateState());
                                      },
                                    ));
                                context
                                    .read<MainBloc>()
                                    .add(const MainEvent.changeIndex(index: 4));
                              });
                        },
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBarThree(CustomColorSet colors) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return BottomNavigationBar(
            backgroundColor: colors.backgroundColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: state.selectIndex,
            selectedItemColor: colors.primary,
            unselectedItemColor: colors.textHint,
            onTap: (index) {
              if (index == 4) {
                context.read<CartBloc>().add(CartEvent.insertCart(
                      context: context,
                      onSuccess: () {
                        if (LocalStorage.getToken().isNotEmpty) {
                          context.read<CartBloc>().add(
                              CartEvent.calculateCartWithCoupon(
                                  context: context));
                        }

                        context
                            .read<ProductBloc>()
                            .add(const ProductEvent.updateState());
                      },
                    ));
              }
              if (index == 3) {
                context
                    .read<ProductBloc>()
                    .add(ProductEvent.fetchLikeProduct(context: context));
                context
                    .read<ShopBloc>()
                    .add(ShopEvent.fetchLikeShops(context: context));
                context
                    .read<MasterBloc>()
                    .add(MasterEvent.fetchLikeMasters(context: context));
              }
              if (index == 2) {
                if (LocalStorage.getToken().isEmpty) {
                  AppRoute.goLogin(context);
                  return;
                }
                context.read<BookingBloc>().add(BookingEvent.fetchBookUpcoming(
                    context: context, isRefresh: true));
                context.read<BookingBloc>().add(BookingEvent.fetchBookPast(
                    context: context, isRefresh: true));
              }
              context.read<MainBloc>().add(MainEvent.changeIndex(index: index));
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/home1.svg",
                  colorFilter: ColorFilter.mode(
                      state.selectIndex == 0 ? colors.primary : colors.textHint,
                      BlendMode.srcIn),
                ),
                label: AppHelpers.getTranslation(TrKeys.home),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/service1.svg",
                  colorFilter: ColorFilter.mode(
                      state.selectIndex == 1 ? colors.primary : colors.textHint,
                      BlendMode.srcIn),
                ),
                label: AppHelpers.getTranslation(TrKeys.catalog),
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/svg/booking1.svg",
                    colorFilter: ColorFilter.mode(
                        state.selectIndex == 2
                            ? colors.primary
                            : colors.textHint,
                        BlendMode.srcIn),
                  ),
                  label: AppHelpers.getTranslation(TrKeys.booking)),
              BottomNavigationBarItem(
                  icon: BlocBuilder<CartBloc, CartState>(
                    builder: (context, stateCart) {
                      return SvgPicture.asset(
                        "assets/svg/like.svg",
                        colorFilter: ColorFilter.mode(
                            state.selectIndex == 3
                                ? colors.primary
                                : colors.textHint,
                            BlendMode.srcIn),
                      );
                    },
                  ),
                  label: AppHelpers.getTranslation(TrKeys.like)),
              if (AppHelpers.getProductsEnabled())
                BottomNavigationBarItem(
                    icon: Badge(
                      label: Text(LocalStorage.getCartList()
                          .where((element) => element.count > 0)
                          .length
                          .toString()),
                      isLabelVisible: LocalStorage.getCartList()
                          .where((element) => element.count > 0)
                          .isNotEmpty,
                      child: SvgPicture.asset(
                        "assets/svg/bag1.svg",
                        colorFilter: ColorFilter.mode(
                            state.selectIndex == 4
                                ? colors.primary
                                : colors.textHint,
                            BlendMode.srcIn),
                      ),
                    ),
                    label: AppHelpers.getTranslation(TrKeys.bag)),
            ]);
      },
    );
  }
}
