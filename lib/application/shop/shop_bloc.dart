import 'package:demand/domain/di/dependency_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:demand/domain/model/model/filter_shop_model.dart';
import 'package:demand/domain/model/model/location_model.dart';
import 'package:demand/domain/model/model/review_data.dart';
import 'package:demand/domain/model/model/shop_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'shop_event.dart';

part 'shop_state.dart';

part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {

  ShopBloc() : super(const ShopState()) {
    int page = 0;
    int newShop = 0;
    int nearShop = 0;
    int popularShop = 0;

    on<FetchShops>((event, emit) async {
      if (event.isRefresh ?? false) {
        event.controller?.resetNoData();
        page = 0;
        emit(state.copyWith(shops: [], isLoading: true, filter: null));
      }
      final res = await shopsRepository.getAllShops(
        page: ++page,
        filter: (event.isRefresh ?? false) ? event.filter : state.filter,
      );
      res.fold((l) {
        List<ShopData> list = List.from(state.shops);
        list.addAll(l.data ?? []);
        emit(state.copyWith(isLoading: false, shops: list));
        if (event.isRefresh ?? false) {
          event.controller?.refreshCompleted();
          return;
        } else if (l.data?.isEmpty ?? true) {
          event.controller?.loadNoData();
          return;
        }
        event.controller?.loadComplete();
        return;
      }, (r) {
        emit(state.copyWith(isLoading: false));
        if (event.isRefresh ?? false) {
          event.controller?.refreshFailed();
        }
        event.controller?.loadFailed();
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<FetchNearShops>((event, emit) async {
      if (event.isRefresh ?? false) {
        event.controller?.resetNoData();
        nearShop = 0;
        emit(state.copyWith(
          nearShops: [],
          isLoadingNear: true,
          filter: null,
        ));
      }
      final res = await shopsRepository.getNearShops(
          page: ++nearShop,
          filter: (event.isRefresh ?? false) ? event.filter : state.filter,
          location: event.location,
          categoryId: event.category,
          withoutShopId: event.withoutShopId);
      res.fold((l) {
        List<ShopData> list = List.from(state.nearShops);
        list.addAll(l.data ?? []);
        emit(state.copyWith(isLoadingNear: false, nearShops: list));
        if (event.isRefresh ?? false) {
          event.controller?.refreshCompleted();
          return;
        } else if (l.data?.isEmpty ?? true) {
          event.controller?.loadNoData();
          return;
        }
        event.controller?.loadComplete();
        return;
      }, (r) {
        emit(state.copyWith(isLoadingNear: false));
        if (event.isRefresh ?? false) {
          event.controller?.refreshFailed();
        }
        event.controller?.loadFailed();
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<FetchPopularShops>((event, emit) async {
      if (event.isRefresh ?? false) {
        event.controller?.resetNoData();
        popularShop = 0;
        emit(state.copyWith(shopsPopular: [], isLoadingPopular: true));
      }
      final res = await shopsRepository.getPopularShops(
          page: ++popularShop, filter: event.filter);
      res.fold((l) {
        List<ShopData> list = List.from(state.shopsPopular);
        list.addAll(l.data ?? []);
        emit(state.copyWith(isLoadingPopular: false, shopsPopular: list));
        if (event.isRefresh ?? false) {
          event.controller?.refreshCompleted();
          return;
        } else if (l.data?.isEmpty ?? true) {
          event.controller?.loadNoData();
          return;
        }
        event.controller?.loadComplete();
        return;
      }, (r) {
        emit(state.copyWith(isLoadingPopular: false));
        if (event.isRefresh ?? false) {
          event.controller?.refreshFailed();
        }
        event.controller?.loadFailed();
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<FetchNewShops>((event, emit) async {
      if (event.isRefresh ?? false) {
        event.controller?.resetNoData();
        newShop = 0;
        emit(state.copyWith(shopsNew: [], isLoading: true));
      }
      final res = await shopsRepository.getNewShops(
        page: ++newShop,
        filter: (event.isRefresh ?? false) ? event.filter : state.filter,
      );
      res.fold((l) {
        List<ShopData> list = List.from(state.shopsNew);
        list.addAll(l.data ?? []);
        emit(state.copyWith(isLoading: false, shopsNew: list));
        if (event.isRefresh ?? false) {
          event.controller?.refreshCompleted();
          return;
        } else if (l.data?.isEmpty ?? true) {
          event.controller?.loadNoData();
          return;
        }
        event.controller?.loadComplete();
        return;
      }, (r) {
        emit(state.copyWith(isLoading: false));
        if (event.isRefresh ?? false) {
          event.controller?.refreshFailed();
        }
        event.controller?.loadFailed();
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<FetchShopById>((event, emit) async {
      if (event.shop?.backgroundImg == null) {
        emit(state.copyWith(isLoading: true));
      }
      emit(state.copyWith(shop: event.shop));
      final res = await shopsRepository.getSingleShop(event.shop?.id ?? 0);
      res.fold((l) {
        emit(state.copyWith(isLoading: false, shop: l.data));
      }, (r) {
        emit(state.copyWith(isLoading: false));
        AppHelpers.errorSnackBar(
          context: event.context,
          message: r,
          typeFixed: true,
        );
      });
    });

    on<GenerateLink>((event, emit) async {
      final res = await shopsRepository.createLink(shop: state.shop);
      res.fold((l) {
        emit(state.copyWith(shopLink: l));
      }, (r) {
        AppHelpers.errorSnackBar(
          context: event.context,
          message: r,
          typeFixed: true,
        );
      });
    });

    on<FetchLikeShops>((event, emit) async {
      if (!(event.isRefresh ?? false)) {
        event.controller?.resetNoData();
        emit(state.copyWith(likeShops: [], isLoadingLike: true));
      }
      if (LocalStorage.getLikedShopsList().isEmpty) {
        emit(state.copyWith(isLoadingLike: false));
        return;
      }
      final res =
          await shopsRepository.getShopsByIds(LocalStorage.getLikedShopsList());
      res.fold((l) {
        emit(state.copyWith(
          isLoadingLike: false,
          likeShops: l.data ?? [],
        ));
        event.controller?.refreshCompleted();
      }, (r) {
        emit(state.copyWith(isLoadingLike: false));
        if (event.isRefresh ?? false) {
          event.controller?.refreshFailed();
        }
        event.controller?.loadFailed();
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<FetchShopsImages>((event, emit) async {
      emit(state.copyWith(shopImages: []));

      final res = await shopsRepository.getShopImage(event.shopId);
      res.fold((l) {
        emit(state.copyWith(
          shopImages: l,
        ));
      }, (r) {
        AppHelpers.errorSnackBar(context: event.context, message: r);
      });
    });

    on<UpdateState>((event, emit) {
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false));
    });

    on<SetFilter>((event, emit) {
      emit(state.copyWith(filter: event.filter));
    });
  }
}
