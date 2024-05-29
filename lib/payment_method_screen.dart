import 'package:customize_tab_bar/Tab_list_screen_widget.dart';
import 'package:customize_tab_bar/app_colors.dart';
import 'package:customize_tab_bar/app_gaps.dart';
import 'package:customize_tab_bar/core_widgets.dart';
import 'package:customize_tab_bar/enums.dart';
import 'package:customize_tab_bar/payment_method_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});
  int _radioVal = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GetBuilder<PaymentMethodScreenController>(
        global: false,
        init: PaymentMethodScreenController(),
        builder: (controller) => Scaffold(
              backgroundColor: AppColors.mainBg,
              appBar: CoreWidgets.appBarWidget(
                  screenContext: context,
                  titleWidget: const Text('Payment Method')),
              body: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: AppGaps.hGap10,
                  ),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TabStatusWidget(
                            text: PaymentHistoryStatus.card.stringValueForView,
                            isSelected: controller.paymentTypeTab.value ==
                                PaymentHistoryStatus.card,
                            onTap: () {
                              controller
                                  .onPaymentTabTap(PaymentHistoryStatus.card);
                            },
                          ),
                          AppGaps.wGap10,
                          TabStatusWidget(
                            text: PaymentHistoryStatus.bank.stringValueForView,
                            isSelected: controller.paymentTypeTab.value ==
                                PaymentHistoryStatus.bank,
                            onTap: () {
                              controller
                                  .onPaymentTabTap(PaymentHistoryStatus.bank);
                            },
                          ),
                          AppGaps.wGap10,
                          TabStatusWidget(
                            text:
                                PaymentHistoryStatus.paypal.stringValueForView,
                            isSelected: controller.paymentTypeTab.value ==
                                PaymentHistoryStatus.paypal,
                            onTap: () {
                              controller
                                  .onPaymentTabTap(PaymentHistoryStatus.paypal);
                            },
                          ),
                          AppGaps.wGap10,
                        ],
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: AppGaps.hGap24,
                  ),
                  Obx(() {
                    switch (controller.paymentTypeTab.value) {
                      case PaymentHistoryStatus.card:
                        return SliverToBoxAdapter(
                          child: Column(
                            children: [
                              CustomTextFormField(
                                labelText: "Card Name",
                                hintText: "Type card name",
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Card Number",
                                hintText: "Type card number",
                                textInputType: TextInputType.number,
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Expire Date",
                                hintText: "Type expire date",
                                textInputType: TextInputType.datetime,
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "CVV Number",
                                hintText: "Type cvv number",
                                textInputType: TextInputType.number,
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Postal Code",
                                hintText: "Type postal code",
                                textInputType: TextInputType.number,
                              ),
                            ],
                          ),
                        );
                      case PaymentHistoryStatus.bank:
                        return SliverToBoxAdapter(
                          child: Column(
                            children: [
                              CustomTextFormField(
                                labelText: "Account Holder Name",
                                hintText: "Type account holder name",
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Account Number",
                                hintText: "Type account number",
                                textInputType: TextInputType.number,
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Bank Name",
                                hintText: "Type bank name",
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Branch Code",
                                hintText: "Type branch code",
                              ),
                            ],
                          ),
                        );
                      case PaymentHistoryStatus.paypal:
                        return SliverToBoxAdapter(
                          child: Column(
                            children: [
                              CustomTextFormField(
                                labelText: "Account Holder Name",
                                hintText: "Type account holder name",
                              ),
                              SizedBox(height: 20),
                              CustomTextFormField(
                                labelText: "Email Address",
                                hintText: "Type email address",
                                textInputType: TextInputType.emailAddress,
                              ),
                            ],
                          ),
                        );
                      case PaymentHistoryStatus.unknown:
                        return const SliverToBoxAdapter(
                          child: Text('No Page Found'),
                        );
                    }
                  }),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  SliverToBoxAdapter(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomStretchedTextButtonWidget(
                          buttonText: "Save Method",
                          // backgroundColor: AppColors.alertColor,
                          onTap: () {},
                        )),
                  ),
                ],
              ),
            ));
  }
}
