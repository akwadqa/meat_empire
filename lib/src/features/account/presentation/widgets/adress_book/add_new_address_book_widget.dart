import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/controller/account_controller.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import 'package:meat_empire/src/utils/app_messages.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:bcrypt/bcrypt.dart';

Future<void> showAddNewAddressBookDialog({
  required BuildContext context,
}) {
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController buildNumberController = TextEditingController();
  Widget buildCityField(BuildContext context) {
    return TextFormField(
      controller: cityController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        hintText: "الدوحة",
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon:
            Assets.icons.cityIcon.svg(color: AppColors.gray).symmetricPadding(
                  horizontal: 4,
                ),
      ),
      textInputAction: TextInputAction.next,
      validator: qValidator([
        IsRequired(context.tr('required')),
        // MinLength(8, 'Password must be at least 8 characters'),
      ]),
      onSaved: (value) => cityController.text = value!,
    );
  }

  Widget buildCountryField(BuildContext context) {
    return TextFormField(
      controller: countryController,
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        hintText: "الفيصل",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon: Assets.icons.countryIcon
            .svg(color: AppColors.gray)
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
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        hintText: "شارع حمد الكبير",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon:
            Assets.icons.streetIcon.svg(color: AppColors.gray).symmetricPadding(
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
      style: const TextStyle(color: AppColors.mediumGray01),
      decoration: InputDecoration(
        hintText: "a24",
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.gray02,
              fontSize: 11,
            ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 30, minHeight: 20, minWidth: 30),
        prefixIcon: Assets.icons.buildNumberIcon
            .svg(color: AppColors.gray)
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

  return showDialog(
    context: context,

    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();

      return GestureDetector(
        onTap: () {
          // Dismiss keyboard when tapping outside
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(), // Dismiss dialog
                child: Container(
                  color: Colors.black.withOpacity(0.1), // Dim background
                ),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 320,
                    // maxHeight: 440,
                  ),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(context.tr("add_new_location"),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      color: AppColors.black900,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    )).centered(),
                            28.verticalSpace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "city".tr(),
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                        width: 140,
                                        height: 50,
                                        child: buildCityField(context)),
                                  ],
                                ),
                                10.horizontalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "country".tr(),
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                        width: 140,
                                        height: 50,
                                        child: buildCountryField(context)),
                                  ],
                                ),
                              ],
                            ),
                            28.verticalSpace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "street".tr(),
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                        width: 140,
                                        height: 50,
                                        child: buildStreetField(context)),
                                  ],
                                ),
                                10.horizontalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "building_number".tr(),
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(fontSize: 12),
                                    ),
                                    SizedBox(
                                        width: 140,
                                        height: 50,
                                        child:
                                            buildBuildingNumberField(context)),
                                  ],
                                ),
                              ],
                            ),
                            Consumer(
                              builder: (context, ref, child) {
                                final data =
                                    ref.watch(accountControllerProvider);

                                return CustomButtonWidget(
                                  text: "save",
                                  backgroundColor: AppColors.primary,
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      final address =
                                          "${cityController.text}-${countryController.text}-${streetController.text}";

                                      ref
                                          .read(accountControllerProvider
                                              .notifier)
                                          .editAccountInformation(
                                              context,
                                              data.value!.userProfile.copyWith(
                                                  shippingAddress: address));

                                      SnackBar(
                                        content: Text(data.value!.message),
                                        backgroundColor: Colors.green,
                                      );
                                    }
                                  },
                                  isFiled: true,
                                  height: 45,
                                  width: 230,
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
              ),
            ],
          ),
        ),
      );
    },
  );
}
