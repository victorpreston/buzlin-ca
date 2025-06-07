import 'package:auto_size_text/auto_size_text.dart';
import 'package:demand/infrastructure/repository/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/app_constants.dart';
import 'package:demand/application/address/address_bloc.dart';
import 'package:demand/domain/model/model/address_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/route/app_route_setting.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:country_currency_pickers/country.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  final RefreshController controller = RefreshController();
  final Delayed delayed = Delayed(milliseconds: 700);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Text(
                AppHelpers.getTranslation(TrKeys.selectCountry),
                style: CustomStyle.interNoSemi(color: colors.textBlack, size: 18),
              ),
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: CustomTextFormField(
                  hint: AppHelpers.getTranslation(TrKeys.search),
                  onChanged: (s) {
                    if (s.trim().isNotEmpty) {
                      delayed.run(() {
                        context.read<AddressBloc>().add(
                            AddressEvent.searchCountry(
                                context: context, search: s));
                      });
                    }
                  },
                ),
              ),
              BlocBuilder<AddressBloc, AddressState>(
                builder: (context, state) {
                  return state.isLoading
                      ? Padding(
                    padding: EdgeInsets.only(top: 32.r),
                    child: const Loading(),
                  )
                      : Expanded(
                    child: SmartRefresher(
                      controller: controller,
                      enablePullDown: false,
                      enablePullUp: true,
                      onLoading: () {
                        context.read<AddressBloc>().add(
                            AddressEvent.fetchCountry(
                                context: context,
                                controller: controller));
                      },
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(16.r),
                        itemCount: state.countries.length,
                        itemBuilder: (context, index) {
                          return _countryItem(colors, state, index);
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      floatingButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingButton: (colors) => PopButton(colors: colors),
    );
  }

  Widget _countryItem(CustomColorSet colors, AddressState state, int index) {
    return ButtonEffectAnimation(
      onTap: () async {
        try {
          // Clear existing cart
          LocalStorage.deleteCartList();

          // Create and save address
          final address = AddressModel(
            countryId: state.countries[index].id,
            regionId: state.countries[index].regionId,
            countryCode: state.countries[index].code,
            country: state.countries[index].translation?.title,
          );
          LocalStorage.setAddress(address);

          // Handle currency setting if country code exists
          if (state.countries[index].code != null) {
            await _setCurrencyForCountry(state.countries[index].code!);
          }

          // Navigation logic
          if ((state.countries[index].citiesCount ?? 0) > 0) {
            AppRouteSetting.goSelectCity(
                context: context, countryId: state.countries[index].id ?? 0);
            return;
          }
          if (AppConstants.isDemo && LocalStorage.getUiType() == null) {
            AppRouteSetting.goSelectUIType(context: context);
            return;
          }
          AppRoute.goMain(context);
        } catch (e) {
          debugPrint('Error in country selection: $e');
          // Fallback to main route
          AppRoute.goMain(context);
        }
      },
      child: Column(
        children: [
          Row(
            children: [
              CustomNetworkImage(
                  url: state.countries[index].img ?? "",
                  height: 20,
                  width: 30,
                  radius: 0),
              16.horizontalSpace,
              AutoSizeText(
                state.countries[index].translation?.title ?? "",
                style: CustomStyle.interNormal(
                    color: LocalStorage.getAddress()?.countryId ==
                        state.countries[index].id
                        ? colors.primary
                        : colors.textBlack,
                    size: 12),
                minFontSize: 6,
                maxFontSize: 14,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              if (LocalStorage.getAddress()?.countryId ==
                  state.countries[index].id)
                Icon(
                  FlutterRemix.check_line,
                  color: colors.primary,
                )
            ],
          ),
          8.verticalSpace,
          const Divider(),
          8.verticalSpace,
        ],
      ),
    );
  }

  Future<void> _setCurrencyForCountry(String countryCode) async {
    try {
      debugPrint('Fetching currency for country: $countryCode');

      // First try to get currency from country_currency_pickers
      Country? country = CountryPickerUtils.getCountryByIsoCode(countryCode);

      if (country != null && country.currencyCode != null) {
        debugPrint('Found currency from country picker: ${country.currencyCode}');

        // Now try to match this with our backend currencies
        final currencyResult = await SettingsRepository().getCurrencies();

        currencyResult.fold(
              (success) {
            if (success.data != null && success.data!.isNotEmpty) {
              // Try to find exact match by currency code
              final matchingCurrency = success.data!.firstWhere(
                    (currency) => currency.title?.toUpperCase() == country!.currencyCode,
                orElse: () => success.data!.firstWhere(
                      (currency) => currency.isDefault ?? false,
                  orElse: () => success.data!.first,
                ),
              );

              if (matchingCurrency != null) {
                debugPrint('Matched currency: ${matchingCurrency}');
                LocalStorage.setSelectedCurrency(matchingCurrency);
              } else {
                debugPrint('No matching currency found in backend, using first available');
                LocalStorage.setSelectedCurrency(success.data!.first);
              }
            } else {
              debugPrint('No currencies available from repository');
              _setFallbackCurrency(country.currencyCode!);
            }
          },
              (failure) {
            debugPrint('Failed to fetch currencies from repository: $failure');
            _setFallbackCurrency(country.currencyCode!);
          },
        );
      } else {
        debugPrint('Country not found in picker, using repository currencies');
        final currencyResult = await SettingsRepository().getCurrencies();

        currencyResult.fold(
              (success) {
            if (success.data != null && success.data!.isNotEmpty) {
              // Try to find default currency
              final defaultCurrency = success.data!.firstWhere(
                    (currency) => currency.isDefault ?? false,
                orElse: () => success.data!.first,
              );

              LocalStorage.setSelectedCurrency(defaultCurrency);
            }
          },
              (failure) => debugPrint('Failed to fetch currencies: $failure'),
        );
      }
    } catch (e) {
      debugPrint('Error in currency setting: $e');
      _setFallbackCurrency(countryCode);
    }
  }

  void _setFallbackCurrency(String countryCode) {
    debugPrint('Using fallback currency for: $countryCode');
    // Implement your fallback logic here
    // For example, you could have a hardcoded map of country codes to currencies
    final fallbackCurrencies = {
      'KE': 'KES',
      'US': 'USD',
      'GB': 'GBP',
      // Add more as needed
    };

    final currencyCode = fallbackCurrencies[countryCode] ?? 'USD';
    debugPrint('Setting fallback currency: $currencyCode');

    // You would need to create a currency model that matches your app's requirements
    // and save it using LocalStorage.setSelectedCurrency()
  }
}