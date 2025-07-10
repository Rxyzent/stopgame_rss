import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rss_news_app/common/extensions/theme_extensions.dart';
import 'package:rss_news_app/common/gen/assets.gen.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    this.hint,
    this.label,
    this.controller,
    this.focusNode,
    this.obscureText = false,
    this.prefixIcon,
    this.errorText,
    this.onChanged,
    this.keyboardType,
    this.inputFormatter,
    this.enabled,
    this.suffix,
    this.mask,
    this.maxLength,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.focusedBorderColor,
    this.borderColor,
    this.background,
    this.suffixPressed,
    this.moneyInput = false,
    this.upperCaseInput = false,
    this.autofocus = false,
    this.padding,
    this.initialValue,
    this.textInputAction,
    this.textInputFormatter,
    this.onTap,
    this.minLines,
    this.maxLines = 1,
    this.onFocusChanged,
    this.textStyle,
    this.removeSpace = true,
  });

  final String? hint;
  final String? label;
  final Widget? prefixIcon;
  final Widget? suffix;
  final TextEditingController? controller;
  final bool obscureText;
  final bool? enabled;
  final FocusNode? focusNode;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final Color? borderColor;
  final Color? enabledBorderColor;
  final Color? disabledBorderColor;
  final Color? focusedBorderColor;
  final Color? background;
  final String? mask;
  final int? maxLength;
  final ValueChanged<bool>? onFocusChanged;
  final VoidCallback? suffixPressed;
  final bool moneyInput;
  final bool upperCaseInput;
  final bool autofocus;
  final EdgeInsets? padding;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? textInputFormatter;
  final GestureTapCallback? onTap;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final bool removeSpace;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool passwordVisible = false;
  late MaskTextInputFormatter maskFormatter;
  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  void initState() {
    passwordVisible = widget.obscureText;
    super.initState();
    _initializeMask();
    _textFieldFocusNode.addListener(() {
      if (widget.onFocusChanged != null) {
        widget.onFocusChanged!(_textFieldFocusNode.hasFocus);
      }
    });
  }

  @override
  void didUpdateWidget(covariant CommonTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mask != widget.mask) {
      _initializeMask();
    }
  }

  void _initializeMask() {
    maskFormatter = MaskTextInputFormatter(
      mask: widget.mask,
      filter: {"#": RegExp(r'\d'), "@": RegExp(r'[A-Za-z]')},
      type: MaskAutoCompletionType.lazy,
    );
  }

  @override
  void dispose() {
    maskFormatter.clear();
    //widget.controller?.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> inputFormatter = [];
    if (widget.mask != null) {
      inputFormatter.add(maskFormatter);
    }
    if (widget.moneyInput) {
      inputFormatter.add(PriceInputFormatter());
    }
    if (widget.upperCaseInput) {
      inputFormatter.add(UpperCaseTextFormatter());
    }
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      initialValue: widget.initialValue,
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      controller: widget.controller,
      onTap: widget.onTap,
      keyboardType: widget.keyboardType,
      obscureText: passwordVisible,
      cursorColor: context.colors.primary,
      inputFormatters: inputFormatter,
      onChanged: widget.onChanged == null
          ? null
          : (phone) {
              final number =
                  maskFormatter.unmaskText(phone).replaceAll(' ', '');
              final newNumber = widget.removeSpace ? number : phone;
              widget.onChanged!(newNumber);
            },
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.background ?? context.colors.window,
        hintText: widget.hint,
        labelText: widget.label,
        errorText: widget.errorText,
        contentPadding: widget.padding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
        prefixIcon: widget.prefixIcon == null
            ? null
            : Align(
                widthFactor: 1,
                alignment: Alignment.center,
                child: widget.prefixIcon,
              ),
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: context.colors.label,
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: widget.borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: widget.enabledBorderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: widget.disabledBorderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: widget.focusedBorderColor ?? context.colors.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.error),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: passwordVisible
                    ? Semantics(
                        label: 'obscure off',
                        child: Assets.icons.obscureOff.svg())
                    : Semantics(
                        label: 'obscure on',
                        child: Assets.icons.obscureOn.svg()),
                onPressed: () {
                  setState(() => passwordVisible = !passwordVisible);
                },
              )
            : widget.suffix != null
                ? IconButton(
                    icon: widget.suffix!,
                    onPressed: widget.suffixPressed,
                  )
                : null,
      ),
      style: widget.textStyle ??
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: context.colors.text,
          ),
    );
  }
}

class PriceInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    newText = newText.replaceAll(RegExp(r'\D'), '');

    String formattedText = '';
    int len = newText.length;
    for (int i = len - 1; i >= 0; i--) {
      formattedText = newText[i] + formattedText;
      if ((len - i) % 3 == 0 && i != 0) {
        formattedText = ' $formattedText';
      }
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  final int? maxLength;

  UpperCaseTextFormatter({this.maxLength});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (maxLength != null && newValue.text.length > maxLength!) {
      return oldValue;
    }
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
