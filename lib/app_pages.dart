import 'package:customize_tab_bar/app_page_names.dart';
import 'package:customize_tab_bar/payment_method_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
        name: AppPageNames.paymentMethodScreen,
        page: () => PaymentMethodScreen()),
  ];
}
