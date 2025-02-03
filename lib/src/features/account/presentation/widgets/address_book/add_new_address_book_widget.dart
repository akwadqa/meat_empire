import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/domain/entites/user_profile.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:queen_validators/queen_validators.dart';

import 'location_field_checkBox_widget.dart';

Future<void> showAddNewAddressBottomSheet({
  required BuildContext context,
  required UserProfile userProfile,
  bool isEdit = false,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return AddNewAddressBookWidget(
        context: context,
        userProfile: userProfile,
        isEdit: isEdit,
      );
    },
  );
}

class AddNewAddressBookWidget extends ConsumerStatefulWidget {
  final BuildContext context;
  final bool isEdit;
  final UserProfile userProfile;

  const AddNewAddressBookWidget({
    super.key,
    required this.context,
    this.isEdit = false,
    required this.userProfile,
  });

  @override
  ConsumerState<AddNewAddressBookWidget> createState() =>
      _AddNewAddressBookWidgetState();
}

class _AddNewAddressBookWidgetState
    extends ConsumerState<AddNewAddressBookWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController buildNumberController;
  late TextEditingController cityController;
  late TextEditingController countryController;
  late TextEditingController streetController;

  String? selectedCityValue;
  String? selectedLocationValue;
  bool billAddSameShippAdd = false;

  final List<Map<String, dynamic>> locations = [
    {'name': 'villa', 'icon': Icons.house},
    {'name': 'office', 'icon': Icons.business_center},
    {'name': 'apartment', 'icon': Icons.business},
  ];

  @override
  void initState() {
    super.initState();
    selectedCityValue = widget.isEdit ? widget.userProfile.shippingCity : null;
    cityController = TextEditingController(
        text: widget.isEdit ? widget.userProfile.shippingCity : "");
    countryController = TextEditingController(
        text: widget.isEdit ? widget.userProfile.shippingCountry : "");
    streetController = TextEditingController(
        text: widget.isEdit ? widget.userProfile.shippingStrete : "");
    buildNumberController = TextEditingController(
        text: widget.isEdit ? widget.userProfile.shippingBuildingNumber : "");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: DraggableScrollableSheet(
        initialChildSize: 0.53,
        minChildSize: 0.53,
        maxChildSize: 1.0,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: SizedBox(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        color: Colors.black.withOpacity(0.1),
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
                                _buildHeader(context),
                                if (!billAddSameShippAdd) ...[
                                  25.verticalSpace,
                                  _buildCityAndCountryFields(context),
                                  25.verticalSpace,
                                  _buildStreetAndBuildingNumberFields(context),
                                ],
                                25.verticalSpace,
                                _buildLocationFieldCheckbox(context),
                                _buildSaveButton(context),
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

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          context.tr("add_shipping_location"),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: AppColors.black900,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
        ),
      ],
    );
  }

  Widget _buildCityAndCountryFields(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFieldColumn(
          context,
          label: "city".tr(),
          child: buildCityField(context),
        ),
        10.horizontalSpace,
        _buildFieldColumn(
          context,
          label: "country".tr(),
          child: buildCountryField(context),
        ),
      ],
    );
  }

  Widget _buildStreetAndBuildingNumberFields(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFieldColumn(
          context,
          label: "street".tr(),
          child: buildStreetField(context),
        ),
        10.horizontalSpace,
        _buildFieldColumn(
          context,
          label: "building_number".tr(),
          child: buildBuildingNumberField(context),
        ),
      ],
    );
  }

  Widget _buildFieldColumn(BuildContext context,
      {required String label, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
        ),
        8.verticalSpace,
        SizedBox(width: 165, height: 40, child: child),
      ],
    );
  }

  Widget _buildLocationFieldCheckbox(BuildContext context) {
    return LocationFieldCheckboxWidget(
      context: context,
      labelText: 'building_type'.tr(),
      locations: locations,
      initialValue: widget.isEdit
          ? locations.indexWhere((location) =>
              location['name'] == widget.userProfile.shippingBuildingType)
          : 2,
      onSaved: (value) {
        selectedLocationValue = locations[value!]['name'];
      },
      validator: (value) {
        if (value == null || value == -1) {
          return 'Please select a location';
        }
        return null;
      },
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final data = ref.watch(accountControllerProvider);
        if (data is AsyncLoading) {
          return const Center(child: FadeCircleLoadingIndicator());
        }
        return CustomButtonWidget(
          text: "save",
          backgroundColor: AppColors.primarySwatch,
          topPading: 25,
          onTap: () {
            if (formKey.currentState!.validate()) {
              ref
                  .read(accountControllerProvider.notifier)
                  .editAccountInformation(
                    context,
                    data.value!.userProfile!.copyWith(
                      shippingBuildingType: selectedLocationValue,
                      shippingCity: selectedCityValue,
                      bllingCity: selectedCityValue,
                      shippingCountry: countryController.text,
                      billingCountry: countryController.text,
                      shippingStrete: streetController.text,
                      billingStrete: streetController.text,
                      shippingBuildingNumber: buildNumberController.text,
                      billingBuildingNumber: buildNumberController.text,
                      defaultShippingCountry: "َََQA",
                      defaultBillingCountry: "َََQA",
                    ),
                  );
            }
          },
          isFiled: true,
          height: 50,
          width: 285,
          radius: 50,
        ).centered();
      },
    );
  }

  Widget buildCityField(BuildContext context) {
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
      onChanged: (value) => selectedCityValue = value!,
      onSaved: (value) => selectedCityValue = value!,
      validator: (value) =>
          value == null || value.isEmpty ? context.tr('required') : null,
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
          value: city['value'],
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
            .symmetricPadding(horizontal: 4),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([IsRequired(context.tr('required'))]),
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
            .symmetricPadding(horizontal: 4),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([IsRequired(context.tr('required'))]),
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
            .symmetricPadding(horizontal: 4),
      ),
      textInputAction: TextInputAction.next,
      onSaved: (value) => buildNumberController.text = value!,
    );
  }
}
