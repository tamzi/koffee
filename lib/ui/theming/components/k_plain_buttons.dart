import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koffee/ui/theming/theme.dart';

/// This creates a default buttons that can be usd all across the app
class KPlainFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const KPlainFlatButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  /// We build our buttons calling the CthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = KTheme.of(context);
    return _ButtonBuilder(
      textColor: themeData.black,
      splashColor: themeData.lightGray,
      label: label,
      onPressed: onPressed,
    ).build(context);
  }
}

class KWarningFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const KWarningFlatButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  /// We build our buttons calling the CthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = KTheme.of(context);
    return _ButtonBuilder(
      textColor: themeData.reddish,
      splashColor: themeData.reddish,
      label: label,
      onPressed: onPressed,
    ).build(context);
  }
}

class KSuccessFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const KSuccessFlatButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  /// We build our buttons calling the CthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = KTheme.of(context);
    return _ButtonBuilder(
      textColor: themeData.warmRed,
      splashColor: themeData.limeGreenish,
      label: label,
      onPressed: onPressed,
    ).build(context);
  }
}

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
class _ButtonBuilder {
  final Color? textColor;
  final Color? splashColor;
  final String? label;
  final VoidCallback? onPressed;
  final double elevation;
  final double borderRadius;
  final double buttonWidth;

  _ButtonBuilder({
    required this.onPressed,
    required this.textColor,
    required this.splashColor,
    required this.label,
    this.elevation = 3.0,
    this.borderRadius = 13.0,
    this.buttonWidth = double.infinity,
  });

  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        textStyle: KTheme.of(context).buttonText,
        splashColor: splashColor,
        enableFeedback: true,
        elevation: elevation,
        padding: const EdgeInsets.only(top: 17.0, bottom: 17.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(label!));
  }
}

/// TODO
/// 1. Investigate issue with parsing a colour on the plain buttons
