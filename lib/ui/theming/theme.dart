import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:koffee/ui/theming/atoms/kcolors.dart';


const KThemeData _default = KThemeData(
  /// Colors
  bluish: KThemeColors.bluish,
  darkBluish: KThemeColors.darkBluish,
  reddish: KThemeColors.reddish,
  warmRed: KThemeColors.warmRed,
  limeGreenish: KThemeColors.limeGreenish,
  white: KThemeColors.white,
  black: KThemeColors.black,
  gray: KThemeColors.gray,
  deepGray: KThemeColors.deepGray,
  darkGray: KThemeColors.lightGray,
  lightGray: KThemeColors.lightGray,
  buttonRed: KThemeColors.buttonRed,

  /// All Text Fields
  appBarHeader: TextStyle(
      fontSize: 27.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: KThemeColors.black),
  appBarDescriptionText: TextStyle(
      fontSize: 13.0,
      height: 1.3,
      letterSpacing: 0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: KThemeColors.darkGray),

  header: TextStyle(
      fontSize: 37.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: KThemeColors.black),
  title: TextStyle(
      fontSize: 33.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: KThemeColors.black),
  bodyText: TextStyle(
      fontSize: 13.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.normal,
      color: KThemeColors.darkGray),
  descriptionText: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.black),
  cardHeader: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: KThemeColors.black),

  ///TextButtons
  buttonText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.black),
  flatButtonText: TextStyle(
      fontSize: 15.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      color: KThemeColors.black),
  buttonTextWhite: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.white),
  buttonTextError: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.reddish),
  buttonTextSuccess: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.limeGreenish),

  ///FORM
  ///
  inputText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: KThemeColors.black),
);

class KThemeData {
  /// Colors
  final Color? bluish;
  final Color? darkBluish;
  final Color? black;
  final Color? reddish;
  final Color? warmRed;
  final Color? limeGreenish;
  final Color? white;
  final Color? gray;
  final Color? deepGray;
  final Color? darkGray;
  final Color? lightGray;

  final Color? buttonRed;

  final KThemeColors? colors;

  //Text
  ///AppBar Texts
  final TextStyle? appBarHeader;
  final TextStyle? appBarDescriptionText;

  ///Content Texts
  final TextStyle? header;
  final TextStyle? title;
  final TextStyle? bodyText;
  final TextStyle? descriptionText;
  final TextStyle? cardHeader;

  /// ButtonTexts
  final TextStyle? buttonText;
  final TextStyle? buttonTextError;
  final TextStyle? buttonTextSuccess;
  final TextStyle? buttonTextWhite;
  final TextStyle? flatButtonText;

  //Form Texts
  final TextStyle? inputText;

  const KThemeData({
    /// Colors
    this.bluish,
    this.darkBluish,
    this.black,
    this.reddish,
    this.warmRed,
    this.limeGreenish,
    this.gray,
    this.deepGray,
    this.darkGray,
    this.lightGray,
    this.white,
    this.colors,
    this.buttonRed,
    // TEXT
    /// AppBar Text
    this.appBarHeader,
    this.appBarDescriptionText,

    /// Content Text
    this.header,
    this.title,
    this.bodyText,
    this.descriptionText,
    this.cardHeader,
    this.inputText,

    /// ButtonTexts
    this.buttonText,
    this.flatButtonText,
    this.buttonTextError,
    this.buttonTextSuccess,
    this.buttonTextWhite,
  });
}

/// The Chatty Theme.
///
/// This is the theme for the Chatty UI Component that make up the
/// Chatty design system for the  application.
///
/// **Note**
/// This is separate to the Flutter Material [Theme] class.
/// See Usage below.
///
/// The values for the Theme are provided by [KThemeData].
/// (The properties of [KThemeData] are the design tokens for the UI.)
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// Chatty ThemeData (CThemeData) constructor if needed.
///
/// The fields in this class represent the design tokens in the Job Finder
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
class KTheme extends InheritedWidget {
  KTheme({this.data = _default, required this.child}) : super(child: child);

  /// The design tokens used by UI Components to apply styling.
  final KThemeData data;
  @override
  final Widget child;

  /// Use to get a reference to the nearest available [KThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = CTheme.of(context);
  /// ```
  static KThemeData of(BuildContext context) {
    ///This will help in logging instances where the theme
    ///is not found on the console.
    ///Ideally this should not be case as we will follow strcitly
    ///the design system
    final Logger staticLogger = Logger();
    final KTheme? currentTheme =
        context.dependOnInheritedWidgetOfExactType<KTheme>();
    if (currentTheme == null) {
      staticLogger.w("Koffee Theme missing. Will apply the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as KTheme).data;
  }
}

///
/// TO DO
/// - Write notes for the Design System by combining the 3 ideas
/// We will prefer odd numbers instead of even ones :)
/// 3,7, 13.17.19 etc
