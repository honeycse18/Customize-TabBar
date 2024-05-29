import 'package:customize_tab_bar/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreenController extends GetxController {
  Rx<PaymentHistoryStatus> paymentTypeTab = PaymentHistoryStatus.card.obs;

  TextEditingController cardNameTextEditingController = TextEditingController();
  TextEditingController cardNumberTextEditingController =
      TextEditingController();
  TextEditingController cardExpireDateTextEditingController =
      TextEditingController();
  TextEditingController cardCvvNumberTextEditingController =
      TextEditingController();
  TextEditingController postalCodeTextEditingController =
      TextEditingController();
  TextEditingController accountHolederNameTextEditingController =
      TextEditingController();
  TextEditingController accountNumberTextEditingController =
      TextEditingController();
  TextEditingController bankNameTextEditingController = TextEditingController();
  TextEditingController branchCodeTextEditingController =
      TextEditingController();
  TextEditingController emailAddressTextEditingController =
      TextEditingController();

  void onPaymentTabTap(PaymentHistoryStatus value) {
    paymentTypeTab.value = value;
    //   rideTripPagingController.refresh();
    update();
  }

  // PagingController<int, CarRentListItem> rideTripPagingController =
  //     PagingController(firstPageKey: 1);

  // Future<void> getRentCarList(int currentPageNumber) async {
  //   final String key = paymentTypeTab.value.stringValue;
  //   CarRentListResponse? response =
  //       await APIRepo.getRentCarList(page: currentPageNumber, key: key);
  //   if (response == null) {
  //     onErrorGetHireDriverList(response);
  //     return;
  //   } else if (response.error) {
  //     onFailureGetHireDriverList(response);
  //     return;
  //   }
  //   log((response.toJson().toString()));
  //   onSuccessGetHireDriverList(response);
  // }

  // void onErrorGetHireDriverList(CarRentListResponse? response) {
  //   rideTripPagingController.error = response;
  // }

  // void onFailureGetHireDriverList(CarRentListResponse response) {
  //   rideTripPagingController.error = response;
  // }

  // void onSuccessGetHireDriverList(CarRentListResponse response) {
  //   final isLastPage = !response.data.hasNextPage;
  //   if (isLastPage) {
  //     rideTripPagingController.appendLastPage(response.data.docs);
  //     return;
  //   }
  //   final nextPageNumber = response.data.page + 1;
  //   rideTripPagingController.appendPage(response.data.docs, nextPageNumber);
  // }

  // dynamic onRentStatusUpdate(dynamic data) {
  //   if (data is RentStatusSocketResponse) {
  //     rentStatusUpdate = data;
  //     update();
  //     if (rentStatusUpdate.id.isNotEmpty) {
  //       rideTripPagingController.refresh();
  //     }
  //   }
  // }

  // late StreamSubscription<NewRentSocketResponse> listen;
  // late StreamSubscription<RentStatusSocketResponse> listen2;

  @override
  void onInit() {
    // TODO: implement onInit
    // rideTripPagingController.addPageRequestListener((pageKey) {
    //   getRentCarList(pageKey);
    // });
    // SocketController socketController = Get.find<SocketController>();
    // listen2 = socketController.rentStatusSocketData.listen((p0) {
    //   onRentStatusUpdate(p0);
    // });
    super.onInit();
  }

  @override
  void onClose() {
    //  listen2.cancel();
    //  messageTextEditingController.dispose();
    super.onClose();
  }
}
