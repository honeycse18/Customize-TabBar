//Payment method object

import 'package:customize_tab_bar/app_constants.dart';

enum PaymentHistoryStatus {
  card(AppConstants.cardStatus, 'Card'),
  bank(AppConstants.bankStatus, 'Bank'),
  paypal(AppConstants.paypalStatus, 'Paypal'),

  unknown(AppConstants.unknown, 'Unknown');

  final String stringValue;
  final String stringValueForView;
  const PaymentHistoryStatus(this.stringValue, this.stringValueForView);

  static PaymentHistoryStatus toEnumValue(String value) {
    final Map<String, PaymentHistoryStatus> stringToEnumMap = {
      PaymentHistoryStatus.card.stringValue: PaymentHistoryStatus.card,
      PaymentHistoryStatus.bank.stringValue: PaymentHistoryStatus.bank,
      PaymentHistoryStatus.paypal.stringValue: PaymentHistoryStatus.paypal,
      PaymentHistoryStatus.unknown.stringValue: PaymentHistoryStatus.unknown
    };
    return stringToEnumMap[value] ?? PaymentHistoryStatus.unknown;
  }
}
