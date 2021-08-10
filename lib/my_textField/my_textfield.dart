// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../../../tools/basic_widgets/useful/show_on_focus.dart';
// import '../../../tools/resources/styles/colors.dart';
//
// import 'my_textfield_controller.dart';
//
// class MyTextField extends StatefulWidget {
//   final EdgeInsetsGeometry? margin;
//   final MyTextFieldController controller;
//   final InputBorder? style;
//   final InputBorder? errorStyle;
//
//   ///If its value will be null then no value will ve displayed
//   final String? titleText;
//   final bool showTitleStar;
//   final TextStyle? titleStyle;
//
//   final String? hintText;
//   final bool floatHint;
//   final int? minLines;
//   final int maxLines;
//   final IconData? prefixIcon;
//   final TextInputType keyboardType;
//   final TextInputAction textInputAction;
//   final TextCapitalization textCapitalization;
//   final TextAlignVertical textAlignVertical;
//   final int maxInputLength;
//   final bool isPassword;
//   final String? allowedChars;
//   final String? blockedChars;
//   final Function(String)? onTextChange;
//   final Function(String)? onSubmitted;
//
//   MyTextField({
//     Key? key,
//     this.margin,
//     required this.controller,
//     this.style,
//     this.errorStyle,
//     this.titleText,
//     this.showTitleStar = false,
//     this.titleStyle,
//     this.hintText,
//     this.floatHint = true,
//     this.minLines,
//     this.maxLines = 1,
//     this.prefixIcon,
//     this.keyboardType = TextInputType.text,
//     this.textInputAction = TextInputAction.done,
//     this.textCapitalization = TextCapitalization.sentences,
//     // this.maxInputLength = 35,
//     this.maxInputLength = 100,
//     this.textAlignVertical = TextAlignVertical.center,
//     this.isPassword = false,
//     this.allowedChars,
//     this.blockedChars,
//     this.onTextChange,
//     this.onSubmitted,
//   }) : super(key: key);
//
//   @override
//   _MyTextFieldState createState() => _MyTextFieldState();
// }
//
// class _MyTextFieldState extends State<MyTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return ShowOnFocused(
//       focusNode: widget.controller.focusNode,
//       child: Container(
//         margin: widget.margin,
//         width: double.infinity,
//         // constraints: BoxConstraints(maxWidth: 600.0),
//         constraints: BoxConstraints(maxWidth: 400.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             _titleText(),
//             _textField(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _titleText() {
//     if (widget.titleText == null) return SizedBox();
//
//     String titleStr =
//     (widget.showTitleStar) ? '${widget.titleText}*' : widget.titleText!;
//
//     TextStyle? textStyle = (widget.titleStyle != null)
//         ? widget.titleStyle
//         : Theme.of(context).textTheme.bodyText2!.copyWith(
//       color: Theme.of(context).primaryColor,
//     );
//
//     return Container(
//       margin: EdgeInsets.only(left: 12.0, right: 12.0),
//       child: Text(
//         titleStr,
//         style: textStyle,
//       ),
//     );
//   }
//
//   Widget _textField() {
//     return TextField(
//       controller: widget.controller.controller,
//       focusNode: widget.controller.focusNode,
//       autofocus: false,
//       keyboardType: widget.keyboardType,
//       textInputAction: widget.textInputAction,
//       textCapitalization: widget.textCapitalization,
// //        textAlign: TextAlign.start, //todo textAlign: TextAlign.left,
//       textAlignVertical: widget.textAlignVertical,
//       obscureText: widget.isPassword,
//       inputFormatters: _inputFormatterList(),
//       // style: TextStyle(fontSize: 14.0, color: AppColor.blackAndWhite),
//       style: Theme.of(context).textTheme.bodyText2!,
//       minLines: widget.minLines,
//       maxLines: widget.maxLines,
//       onChanged: widget.onTextChange,
//       onSubmitted: widget.onSubmitted,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: AppColor.whiteAndBlack,
//         errorText: widget.controller.validationErrorMsg,
//         // errorStyle: TextStyle(
//         //   fontSize: 14.0,
//         //   color: AppColor.darkRedColor,
//         // ),
//         errorStyle: Theme.of(context)
//             .textTheme
//             .bodyText2!
//             .copyWith(color: AppColor.darkRedColor),
//         errorMaxLines: 100,
//         hintText: (!widget.floatHint) ? widget.hintText : null,
//         hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
//           // color: AppColor.darkGrayColor,
//           color: Theme.of(context).primaryColor,
//         ),
//         // floatingLabelBehavior: FloatingLabelBehavior.always,
//         labelText: (widget.floatHint) ? widget.hintText : null,
//         alignLabelWithHint: true,
//         labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
//           color: Theme.of(context).primaryColor,
//         ),
//         prefixIcon: (widget.prefixIcon != null)
//             ? Icon(
//           widget.prefixIcon,
//           size: 22.0,
//           color: Theme.of(context).primaryColor,
//         )
//             : null,
//         isDense: true,
//         // contentPadding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
//         border: (widget.style == null) ? _borderStyle() : widget.style,
//         enabledBorder: (widget.style == null) ? _borderStyle() : widget.style,
//         focusedBorder: (widget.style == null) ? _borderStyle() : widget.style,
//         errorBorder: (widget.errorStyle == null)
//             ? _borderStyle(color: AppColor.darkRedColor)
//             : widget.errorStyle,
//         focusedErrorBorder: (widget.errorStyle == null)
//             ? _borderStyle(color: AppColor.darkRedColor)
//             : widget.errorStyle,
//       ),
//     );
//   }
//
//   List<TextInputFormatter> _inputFormatterList() {
//     List<TextInputFormatter> inputFormatterData = [];
//     inputFormatterData
//         .add(LengthLimitingTextInputFormatter(widget.maxInputLength));
//
//     if (widget.allowedChars != null) {
// //      Utilities.myLog('AllowedChars $allowedChars');
// //       inputFormatterData.add(WhitelistingTextInputFormatter(RegExp('[$allowedChars]')));
//       inputFormatterData.add(FilteringTextInputFormatter.allow(
//           RegExp('[${widget.allowedChars}]')));
//     }
//
//     if (widget.blockedChars != null) {
// //      Utilities.myLog('blockedChars $blockedChars');
// //       inputFormatterData.add(BlacklistingTextInputFormatter(RegExp('[$blockedChars]')));
//       inputFormatterData.add(
//           FilteringTextInputFormatter.deny(RegExp('[${widget.blockedChars}]')));
//     }
//
// //    Utilities.myLog('TextInputFormatter length: ${inputFormatterData.length}');
//
//     return inputFormatterData;
//   }
//
//   InputBorder _borderStyle({Color? color, double? width, double? radius}) {
//     color = color ?? Theme.of(context).primaryColor;
//     width = width ?? 1.0;
//     radius = radius ?? 12.0;
//
//     return OutlineInputBorder(
//       borderSide: BorderSide(
//         color: color,
//         width: width,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.all(
//         Radius.circular(radius),
//       ),
//     );
//   }
// }