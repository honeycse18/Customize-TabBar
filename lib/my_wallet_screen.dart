import 'package:customize_tab_bar/app_colors.dart';
import 'package:customize_tab_bar/app_gaps.dart';
import 'package:customize_tab_bar/core_widgets.dart';
import 'package:customize_tab_bar/my_wallet_screen_controller.dart';
import 'package:customize_tab_bar/withdraw_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWalletScreenScreenController>(
      init: MyWalletScreenScreenController(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color(0xFFF7F7FB),
        body: SafeArea(
          child: Column(
            children: [
              AppGaps.hGap24,
              Row(
                children: [
                  Expanded(
                    child: CustomStretchedOutlinedButtonWidget(
                      child: Text(
                        "Withdraw",
                        style: const TextStyle(color: AppColors.primaryColor),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return WithdrawDialogWidget();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              AppGaps.hGap24,
            ],
          ),
        ),
      ),
    );
  }
}
