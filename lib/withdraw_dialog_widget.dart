import 'package:customize_tab_bar/app_page_names.dart';
import 'package:customize_tab_bar/core_widgets.dart';
import 'package:customize_tab_bar/payment_method_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WithdrawDialogWidget extends StatelessWidget {
  WithdrawDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) => Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /*  Obx(() => DropdownMenuButtonFormFieldWidget (
                                labelText:"Select Method",
                                textButton:  "add",
                               // onAddButtonTap: controller.onAddNewBrandButtonTap,
                                hintText: 'Select a method',
                                isLoading: controller.isElementsLoading.value,
                                items: controller.brands,
                                value: controller.selectedBrand,
                                getItemText: (item) => item.name,
                                onChanged: controller.onBrandChange,
                              )), */
                  SizedBox(height: 16),
                  CustomTextFormField(
                    labelText: "Enter Amount",
                    hintText: "Enter your amount",
                  ),
                  SizedBox(height: 50),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomStretchedTextButtonWidget(
                        buttonText: "Withdraw",
                        // backgroundColor: AppColors.alertColor,
                        onTap: () {},
                      )),
                  SizedBox(height: 16),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomStretchedTextButtonWidget(
                        buttonText: "Payment method",
                        // backgroundColor: AppColors.alertColor,
                        onTap: () {
                          // Get.toNamed(AppPageNames.paymentMethodScreen);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentMethodScreen()));
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      );
}
