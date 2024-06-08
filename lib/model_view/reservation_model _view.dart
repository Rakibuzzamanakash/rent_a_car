import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationModelView extends GetxController {
  var selectPickUpDate = Rx<DateTime?>(null);
  var selectReturnDate = Rx<DateTime?>(null);
  var difference = ''.obs;

  TextEditingController reservationIdController = TextEditingController();
  TextEditingController discountController = TextEditingController();

  void pickUpDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectPickUpDate.value ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectPickUpDate.value) {
      selectPickUpDate.value = pickedDate;
      calculateDifference();
    }
  }

  void returnDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectReturnDate.value ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectReturnDate.value) {
      selectReturnDate.value = pickedDate;
      calculateDifference();
    }
  }

  void calculateDifference() {
    if (selectPickUpDate.value != null && selectReturnDate.value != null) {
      final differenceDuration =
          selectReturnDate.value!.difference(selectPickUpDate.value!);
      difference.value = formatDifference(differenceDuration);
    } else {
      difference.value = '';
    }
  }

  String formatDifference(Duration difference) {
    final days = difference.inDays;
    if (days > 7) {
      final weeks = days ~/ 7;
      final remainingDays = days % 7;
      return '$weeks weeks and $remainingDays days';
    } else if (days > 1) {
      return '$days days';
    } else if (days == 1) {
      return '1 day';
    } else {
      final hours = difference.inHours;
      return '$hours hours';
    }
  }

  @override
  void dispose() {
    reservationIdController.dispose();
    discountController.dispose();
    super.dispose();
  }
}
