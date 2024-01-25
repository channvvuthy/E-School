import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:get/get.dart';

class Validation {
  static bool isEmail(String value) {
    // Regular expression for basic email validation
    final emailRegex = RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$");
    return emailRegex.hasMatch(value);
  }

  static bool isMax(String value, int max) {
    return value.length <= max;
  }

  static bool isMin(String value, int min) {
    return value.length >= min;
  }

  static bool isRequired(String value) {
    return value.trim() != '';
  }

  static bool isNum(String value) {
    try {
      num.parse(value);
      return true;
    } catch (e) {
      return false;
    }
  }

  static String? validateField(
      String fieldName, String fieldValue, List<String> rules) {
    var ruleName = rules[0];
    var value = rules[1];

    switch (ruleName) {
      case 'min':
        return isMin(fieldValue, int.parse(value))
            ? null
            : '$fieldName should have at least $value characters.';
      case 'max':
        return isMax(fieldValue, int.parse(value))
            ? null
            : '$fieldName should have at most $value characters.';
      case 'isEmail':
        return isEmail(fieldValue)
            ? null
            : '$fieldName should be a valid email address.';
      case 'required':
        return isRequired(fieldValue) ? null : '$fieldName is required.';
      case 'number':
        return isNum(fieldValue) ? null : '$fieldName must be a valid number.';
      default:
        return null;
    }
  }

  static String capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  static makeMessage(Map<String, List<String>> errors) {
    if (errors.isNotEmpty) {
      Get.snackbar(
        "Error",
        errors.entries.map((entry) {
          var errorMessages = entry.value.map((errorMessage) {
            return '• $errorMessage\n';
          }).join();

          return errorMessages.toUpperCase();
        }).join(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: white,
        borderRadius: 4,
        maxWidth: 450,
      );
    }
  }

  static Map<String, List<String>> validateFields(
      List<Map<String, dynamic>> fields) {
    var errors = <String, List<String>>{};

    for (var fieldMap in fields) {
      var field = fieldMap['field'];
      var validationString = field['validation'];
      var validationRules = validationString.split(',');

      for (var ruleString in validationRules) {
        var createdRules = ruleString.split(':');
        var errorMessage =
            validateField(field['name'], field['value'], createdRules);

        if (errorMessage != null) {
          errors.putIfAbsent(field['name'], () => []);
          errors[field['name']]?.add(errorMessage);
        }
      }
    }

    makeMessage(errors);
    return errors;
  }
}
