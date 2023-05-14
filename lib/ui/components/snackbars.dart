import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/translation_keys.dart';

void showSuccessContactFormMessage() {
  showSnackbar(
      title: trContactSentSuccessTitle.tr,
      message: trContactSentSuccessMessage.tr,
      color: Colors.green,
      icon: const Icon(Icons.done));
}

void showErrorContactFormMessage(int errorCode) {
  showSnackbar(
      title: trContactSentErrorTitle.tr,
      message: '${trContactSentErrorMessage.tr} $errorCode',
      color: Colors.red,
      icon: const Icon(Icons.error));
}

void showSnackbar(
        {required String title,
        required String message,
        required Color color,
        required Icon icon}) =>
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: color,
        icon: icon,
        margin: const EdgeInsets.all(20));
