import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:queen_validators/queen_validators.dart';

import 'location_field_checkBox_widget.dart';
import 'same_shipping_address_radio_widget.dart';

Future<void> showAddNewAddressBottomSheet({
  required BuildContext context,
  required UserProfile userProfile,
  required bool billMode,
  bool isEdit = false,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return AddNewAddressBookWidget(
        context: context,
        userProfile: userProfile,
        billMode: billMode,
        isEdit: isEdit,
      );
    },
  );
}

class AddNewAddressBookWidget extends ConsumerStatefulWidget {
  final BuildContext context;
  final bool billMode;
  bool isEdit;
  final UserProfile userProfile;
  AddNewAddressBookWidget(
      {super.key,
      required this.context,
      required this.billMode,
      this.isEdit = false,
      required this.userProfile});

  @override
  ConsumerState<AddNewAddressBookWidget> createState() =>
      _AddNewAddressBookWidgetState();
}

class _AddNewAddressBookWidgetState
    extends ConsumerState<AddNewAddressBookWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController buildNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  String? selectedCityValue;
  String? selectedLocationValue;
  bool billAddSameShippAdd = false;
  final List<Map<String, dynamic>> locations = [
    {
      'name': 'villa',
      'icon': Icons.house,
    },
    {
      'name': 'office',
      'icon': Icons.business_center,
    },
    {
      'name': 'apartment',
      'icon': Icons.business,
    },
  ];

  @override
  void initState() {
    selectedCityValue = widget.isEdit
        ? widget.billMode
            ? widget.userProfile.bllingCity
            : widget.userProfile.shippingCity
        : null;
    cityController = TextEditingController(
        text: widget.isEdit
            ? widget.billMode
                ? widget.userProfile.bllingCity
                : widget.userProfile.shippingCity
            : "");
    countryController = TextEditingController(
        text: widget.isEdit
            ? widget.billMode
                ? widget.userProfile.billingCountry
                : widget.userProfile.shippingCountry
            : "");
    streetController = TextEditingController(
        text: widget.isEdit
            ? widget.billMode
                ? widget.userProfile.billingStrete
                : widget.userProfile.shippingStrete
            : "");
    buildNumberController = TextEditingController(
        text: widget.isEdit
            ? widget.billMode
                ? widget.userProfile.billingBuildingNumber
                : widget.userProfile.shippingBuildingNumber
            : "");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: DraggableScrollableSheet(
        initialChildSize: widget.billMode
            ? billAddSameShippAdd
                ? 0.2
                : 0.44
            : 0.53,
        minChildSize: widget.billMode
            ? billAddSameShippAdd
                ? 0.2
                : 0.44
            : 0.53,
        maxChildSize: 1.0,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: SizedBox(
              child: GestureDetector(
                onTap: () {
                  // Dismiss keyboard when tapping outside
                  FocusScope.of(context).unfocus();
                },
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pop(), // Dismiss dialog
                      child: Container(
                        color: Colors.black.withOpacity(0.1), // Dim background
                      ),
                    ),
                    Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 10),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        context.tr(widget.billMode
                                            ? "add_billing_location"
                                            : "add_shipping_location"),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              color: AppColors.black900,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                            )),
                                    Spacer(),
                                    if (widget.billMode)
                                      CustomRadioFormField(
                                        initialValue: billAddSameShippAdd,
                                        context: context,
                                        possibleToAddSameShippingAddress: widget
                                            .userProfile
                                            .shippingStrete!
                                            .isNotEmpty,
                                        onSaved: (val) {
                                          billAddSameShippAdd = val!;
                                          setState(() {});
                                        },
                                      ),
                                  ],
                                ),
                                if (!billAddSameShippAdd) ...[
                                  25.verticalSpace,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "city".tr(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(fontSize: 14),
                                          ),
                                          8.verticalSpace,
                                          SizedBox(
                                              width: 165,
                                              height: 40,
                                              child: buildCityField(context)),
                                        ],
                                      ),
                                      10.horizontalSpace,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "country".tr(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(fontSize: 14),
                                          ),
                                          8.verticalSpace,
                                          SizedBox(
                                              width: 165,
                                              height: 40,
                                              child:
                                                  buildCountryField(context)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  25.verticalSpace,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "street".tr(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(fontSize: 14),
                                          ),
                                          8.verticalSpace,
                                          SizedBox(
                                              width: 165,
                                              height: 40,
                                              child: buildStreetField(context)),
                                        ],
                                      ),
                                      10.horizontalSpace,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "building_number".tr(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(fontSize: 14),
                                          ),
                                          8.verticalSpace,
                                          SizedBox(
                                              width: 165,
                                              height: 40,
                                              child: buildBuildingNumberField(
                                                  context)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                                25.verticalSpace,
                                if (!widget.billMode)
                                  LocationFieldCheckboxWidget(
                                    context: context,
                                    labelText: 'building_type'.tr(),
                                    locations: locations,
                                    initialValue: widget.isEdit
                                        ? locations.indexWhere((location) =>
                                            location['name'] ==
                                            widget.userProfile
                                                .shippingBuildingType)
                                        : 2,
                                    onSaved: (value) {
                                      debugPrint(
                                          'Selected Location Index: $value');
                                      selectedLocationValue =
                                          locations[value!]['name'];
                                    },
                                    validator: (value) {
                                      if (value == null || value == -1) {
                                        return 'Please select a location';
                                      }
                                      return null;
                                    },
                                  ),
                                Consumer(
                                  builder: (context, ref, child) {
                                    final data =
                                        ref.watch(accountControllerProvider);

                                    return CustomButtonWidget(
                                      text: "save",
                                      backgroundColor: AppColors.primarySwatch,
                                      topPading: 25,
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          ref
                                              .read(accountControllerProvider
                                                  .notifier)
                                              .editAccountInformation(
                                                  context,
                                                  (widget.billMode)
                                                      ? (billAddSameShippAdd)
                                                          ? data.value!.userProfile!.copyWith(
                                                              bllingCity: widget
                                                                  .userProfile
                                                                  .shippingCity,
                                                              billingCountry: widget
                                                                  .userProfile
                                                                  .shippingCountry,
                                                              billingStrete: widget
                                                                  .userProfile
                                                                  .shippingStrete,
                                                              billingBuildingNumber: widget
                                                                  .userProfile
                                                                  .shippingBuildingNumber,
                                                              defaultBillingCountry:
                                                                  "qa")
                                                          : data.value!.userProfile!.copyWith(
                                                              bllingCity:
                                                                  selectedCityValue,
                                                              billingCountry:
                                                                  countryController
                                                                      .text,
                                                              billingStrete: streetController
                                                                  .text,
                                                              billingBuildingNumber:
                                                                  buildNumberController
                                                                      .text,
                                                              defaultBillingCountry:
                                                                  "qa")
                                                      : data.value!.userProfile!.copyWith(
                                                          shippingBuildingType: selectedLocationValue,
                                                          shippingCity: selectedCityValue,
                                                          shippingCountry: countryController.text,
                                                          shippingStrete: streetController.text,
                                                          shippingBuildingNumber: buildNumberController.text,
                                                          defaultShippingCountry: "qa"));

                                          SnackBar(
                                            content: Text(data.value!.message),
                                            backgroundColor: Colors.green,
                                          );
                                        }
                                      },
                                      isFiled: true,
                                      height: 50,
                                      width: 285,
                                      radius: 50,
                                    ).centered();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildCityField(BuildContext context) {
    // List of cities with display names and corresponding values
    final List<Map<String, String>> cities = [
      {'name': 'Doha', 'value': 'DOH'},
      {'name': 'Al Rayyan', 'value': 'RAY'},
      {'name': 'Al Wakrah', 'value': 'WAK'},
      {'name': 'Umm Salal', 'value': 'UMS'},
      {'name': 'Al Khor', 'value': 'KHO'},
      {'name': 'Al Daayen', 'value': 'DAY'},
      {'name': 'Al Shamal', 'value': 'SHA'},
      {'name': 'Al Sheehaniya', 'value': 'SHE'},
    ];

    return DropdownButtonFormField<String>(
      value: selectedCityValue,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.gray02,
            fontSize: 14,
          ),
      onChanged: (value) {
        selectedCityValue = value!; // Update selected city value
      },
      onSaved: (value) {
        selectedCityValue = value!; // Save selected city value
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.tr('required'); // Validate that a city is selected
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 9,
            ),
        hintText: context.tr('select_city'),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 30,
          maxWidth: 30,
          minHeight: 30,
          minWidth: 30,
        ),
        prefixIcon: Assets.icons.cityIcon
            .svg(color: AppColors.black800)
            .onlyPadding(start: 4, end: 6),
      ),
      items: cities.map((city) {
        return DropdownMenuItem<String>(
          value: city['value'], // The value to be stored (e.g., DOH, RAY)

          child: Text(
            '${city['name']}',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 12,
                  color: AppColors.black900,
                ),
          ),
        );
      }).toList(),
    );
  }

  Widget buildCountryField(BuildContext context) {
    return TextFormField(
      controller: countryController,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.black900,
            fontSize: 12,
          ),
      decoration: InputDecoration(
        hintText: "الفيصل",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon: Assets.icons.countryIcon
            .svg(color: AppColors.black800)
            .symmetricPadding(
              horizontal: 4,
            ),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
      ]),
      onSaved: (value) => countryController.text = value!,
    );
  }

  Widget buildStreetField(BuildContext context) {
    return TextFormField(
      controller: streetController,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.black900,
            fontSize: 12,
          ),
      decoration: InputDecoration(
        hintText: "شارع حمد الكبير",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon: Assets.icons.streetIcon
            .svg(color: AppColors.black800)
            .symmetricPadding(
              horizontal: 4,
            ),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
      ]),
      onSaved: (value) => streetController.text = value!,
    );
  }

  Widget buildBuildingNumberField(BuildContext context) {
    return TextFormField(
      controller: buildNumberController,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.black900,
            fontSize: 12,
          ),
      decoration: InputDecoration(
        hintText: "a24",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon: Assets.icons.buildNumberIcon
            .svg(color: AppColors.black800)
            .symmetricPadding(
              horizontal: 4,
            ),
      ),
      textInputAction: TextInputAction.next,
      // validator: qValidator([
      //   IsRequired(context.tr('required')),
      // ]),
      onSaved: (value) => buildNumberController.text = value!,
    );
  }
}
