// /This class is used for EditText/
// import 'package:flutter/material.dart';
// // import '../../utilities/my_validator.dart';
//
// import 'package:string_validator/string_validator.dart';
// import 'package:vked/tools/utilities/utils.dart';
//
// class MyTextFieldController {
// late TextEditingController controller;
// late FocusNode focusNode;
// MyTextFieldValidator? validator;
// String? validationErrorMsg;
//
// Object? object; //Store extra information. It will not used in widget tree.
// late bool trimText;
//
// MyTextFieldController({
// bool trimText = true,
// MyTextFieldValidator? validator,
// }) {
// // this.controller = (controller == null) ? TextEditingController() : controller;
// this.controller = TextEditingController();
// this.focusNode = FocusNode();
// this.validator = validator;
// this.object = Object();
// this.trimText = trimText;
// }
//
// bool get validateSuccess {
// // if (validator != null && controller!.text != null) {
// if (validator != null) {
// validationErrorMsg = validator!.validate(controller.text);
// return (validationErrorMsg == null) ? true : false;
// }
//
// return true;
// }
//
// @Deprecated('Use iText getter and setter for text')
// String text([bool trim = true]) {
// return (trim) ? controller.text.trim() : controller.text;
// }
//
// ///Input text
// String get iText {
// return (trimText) ? controller.text.trim() : controller.text;
// }
//
// set iText(String text) {
// controller.text = text;
// }
// }
//
// ///-----------------------------------------------------------------------------
// class MyTextFieldValidator {
// final List<TextValidator>? validateList;
// final bool showAllErrors;
//
// MyTextFieldValidator({
// this.validateList,
// this.showAllErrors = false,
// });
//
// ///Return null if validate successfully otherwise return error message.
// String? validate(String text) {
// if (validateList != null && validateList!.length != 0) {
// String? errorMsg;
// int errorCount = 0;
//
// for (int i = 0; i < validateList!.length; i++) {
// TextValidator item = validateList!.elementAt(i);
//
// if (!item.validate(text)) {
// ++errorCount;
//
// if (!showAllErrors) {
// errorMsg = item.errorMessage;
// return errorMsg;
// } else {
// if (errorCount > 1) {
// errorMsg = errorMsg! + '\n';
// }
//
// errorMsg = (errorMsg ?? '') + item.errorMessage;
// }
// }
// }
//
// return errorMsg;
// }
//
// return null;
// }
// }
//
// ///-----------------------------------------------------------------------------
// enum ValidateAction {
// notEmpty,
// isEmail,
// isUrl,
// isNumber,
// hasCapitalLatter,
// hasSmallLatter,
// hasNumber,
// hasSpecialChar,
// LengthRange,
// }
//
// abstract class TextValidator {
// ValidateAction get name;
//
// String get errorMessage;
//
// bool validate(String text);
// }
//
// class ValidateNotEmpty extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateNotEmpty({
// this.errorMsg,
// this.trim = true,
// });
//
// @override
// ValidateAction get name => ValidateAction.notEmpty;
//
// @override
// String get errorMessage => errorMsg ?? 'Empty field is not allowed';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
//
// if (textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateIsEmail extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateIsEmail({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.isEmail;
//
// @override
// String get errorMessage => errorMsg ?? 'Invalid Email';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// bool isValidEmail = isEmail(textInput);
//
// if (isValidEmail && textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateIsUrl extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
// final List<String> protocolList;
// final requiredProtocol; // HTTP, HTTPS, FTP
// final allowUnderscore;
//
// ValidateIsUrl({
// this.errorMsg,
// this.trim = false,
// this.protocolList = const ['http', 'https', 'ftp'],
// this.requiredProtocol = true,
// this.allowUnderscore = true,
// });
//
// @override
// ValidateAction get name => ValidateAction.isUrl;
//
// @override
// String get errorMessage => errorMsg ?? 'Invalid URL';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// bool isValidUrl = isURL(textInput, {
// 'protocols': protocolList,
// 'require_protocol': requiredProtocol,
// 'allow_underscores': allowUnderscore,
// });
//
// if (isValidUrl && textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateIsNumber extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateIsNumber({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.isNumber;
//
// @override
// String get errorMessage => errorMsg ?? 'Invalid number';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// bool isValidNumber = isFloat(textInput);
// // bool isValidNumber = isNumeric(textInput);
// // bool isValidNumber = isInt(textInput);
// // RegExp validateText = RegExp(r'[0-9]');
//
// Utils.myLog(
// 'String: $text, isValidNum: $isValidNumber, isNotEmpty: ${textInput.isNotEmpty}');
//
// // if (isValidNumber && textInput.isNotEmpty) {
// //   return true;
// // }
// if (isValidNumber) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateHasCapitalLatter extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateHasCapitalLatter({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.hasCapitalLatter;
//
// @override
// String get errorMessage => errorMsg ?? 'Must contain a capital letter';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// RegExp validateText = RegExp(r'[A-Z]');
//
// // if (textInput.contains(validateText) && textInput.isNotEmpty) {
// //   return true;
// // }
// if (validateText.hasMatch(textInput) && textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateHasSmallLatter extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateHasSmallLatter({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.hasSmallLatter;
//
// @override
// String get errorMessage => errorMsg ?? 'Must contain a small letter';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// RegExp validateText = RegExp(r'[a-z]');
//
// // if (textInput.contains(validateText) && textInput.isNotEmpty) {
// //   return true;
// // }
// if (validateText.hasMatch(textInput) && textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateHasNumber extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateHasNumber({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.hasNumber;
//
// @override
// String get errorMessage => errorMsg ?? 'Must contain a number';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// RegExp validateText = RegExp(r'[0-9]');
//
// // if (textInput.contains(validateText) && textInput.isNotEmpty) {
// //   return true;
// // }
// if (validateText.hasMatch(textInput) && textInput.isNotEmpty) {
// return true;
// }
//
// return false;
// }
// }
//
// class ValidateHasSpecialChar extends TextValidator {
// final String? errorMsg;
//
// final bool trim;
//
// ValidateHasSpecialChar({
// this.errorMsg,
// this.trim = false,
// });
//
// @override
// ValidateAction get name => ValidateAction.hasSpecialChar;
//
// @override
// String get errorMessage => errorMsg ?? 'Must contain a special character';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
// RegExp validateText = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
//
// if (textInput.isNotEmpty) {
// if (text.contains(validateText)) {
// return true;
// } else if (text.contains('[')) {
// return true;
// } else if (text.contains(']')) {
// return true;
// } else if (text.contains(r"'")) {
// return true;
// } else if (text.contains(r"`")) {
// return true;
// } else if (text.contains(r"~")) {
// return true;
// } else if (text.contains(r"-")) {
// return true;
// } else if (text.contains(r"_")) {
// return true;
// } else if (text.contains(r"+")) {
// return true;
// } else if (text.contains(r"=")) {
// return true;
// } else if (text.contains(r"\")) {
// return true;
// } else if (text.contains(r";")) {
// return true;
// } else if (text.contains(r"/")) {
// return true;
// }
// }
//
// return false;
// }
// }
//
// class ValidateLengthRange extends TextValidator {
// // final String text; //This [text] will be replaced with [TextValidator.text]
// final String? errorMsg;
//
// final bool trim;
// final int min;
// final int max;
//
// ValidateLengthRange({
// this.errorMsg,
// this.trim = false,
// this.min = 1,
// this.max = 99999,
// });
//
// @override
// ValidateAction get name => ValidateAction.LengthRange;
//
// @override
// String get errorMessage => errorMsg ?? 'Invalid text length';
//
// @override
// bool validate(String text) {
// String textInput = (trim) ? text.trim() : text;
//
// if (textInput.isNotEmpty) {
// if (textInput.length >= min && textInput.length <= max) {
// return true;
// }
// }
//
// return false;
// }
// }
//
// class ValidateCompareString {
// static bool match(MyTextFieldController c1, MyTextFieldController c2) {
// if (c1.controller.text != c2.controller.text) return false;
//
// return true;
// }
// }