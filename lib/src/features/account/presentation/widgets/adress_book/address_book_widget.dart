import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/int_extenssion.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/adress_book/address_book_card_widget.dart';
import 'package:meat_empire/src/features/account/presentation/widgets/custom_button_widget.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

class AddressBookWidget extends StatefulWidget {
  const AddressBookWidget({super.key});

  @override
  _AddressBookWidgetState createState() => _AddressBookWidgetState();
}

class _AddressBookWidgetState extends State<AddressBookWidget> {
  int selectedIndex = -1;
  TextEditingController newLocationController = TextEditingController();

  void _onCardTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(context.tr("address_book"),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: AppColors.black900,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  )).centered(),
                          ...List.generate(3, (index) {
                            return AddressBookCardWidget(
                              title: "title $index",
                              isSelected: selectedIndex == index,
                              onTap: () => _onCardTap(index),
                            );
                          }),
                          28.verticalSpace,
                          CustomButtonWidget(
                            text: "add_new_location",
                            backgroundColor: AppColors.green,
                            onTap: () {
                              Navigator.of(context).pop(); // Close dialog
                            },
                            isFiled: true,
                            height: 50,
                            width: 220,
                            radius: 8,
                          ).centered(),
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
  }
}

Future<void> showAddressBookDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      return AddressBookWidget();
    },
  );
}
