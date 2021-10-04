import 'package:flutter/material.dart';

import 'package:koffee/ui/theming/theme.dart';

abstract class _Ktext extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  const _Ktext({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.textOverflow,
  }) : super(key: key);
}

// APPBAR TEXT ELEMENTS
/// THese are texts tht aiwll be used generally in the
/// appbars and sliverBars
/// APpBarHEader
class KAppBarHeader extends _Ktext {
  const KAppBarHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).appBarHeader,
    );
  }
}

/// APpBarDescription Text
class KAppBarDescription extends _Ktext {
  const KAppBarDescription(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).appBarDescriptionText,
    );
  }
}

// CONTENT Texts
/// Header Texts
/// These are used in the various text items
class KHeader extends _Ktext {
  const KHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).header,
    );
  }
}

// Title Widget
/// These wil be used in the overall title elements.
/// these will be placed in the various segments
class KTitle extends _Ktext {
  const KTitle(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).title,
    );
  }
}

// Description Text Widget
/// These are used in the various card element parts
class KDescriptionText extends _Ktext {
  const KDescriptionText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).descriptionText,
    );
  }
}

// Body Text
/// This is the body text that will exist in the project
class KBodyText extends _Ktext {
  const KBodyText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).bodyText,
    );
  }
}

// CARD Texts
/// These are used in the various hEaders in the cards.
/// The cards here include Job Cards and Infomation cards.
// Card Header
class KCardHeader extends _Ktext {
  const KCardHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).header,
    );
  }
}

// BUTTON TEXTS
///  - These texts will appear on the various buttons
// Normal ButtonTexts
/// This is the default button text element.
/// This will be of the color black.
class KBtnText extends _Ktext {
  const KBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).buttonText,
    );
  }
}

// Flat Button Text
class KFlatBtnText extends _Ktext {
  const KFlatBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).flatButtonText,
    );
  }
}

//White Button Text
///
class KBtnTextWhite extends _Ktext {
  const KBtnTextWhite(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).buttonTextWhite,
    );
  }
}

// Error Button Text
///
class KBtnTextError extends _Ktext {
  const KBtnTextError(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).buttonTextError,
    );
  }
}

// Success Button Text
///
class KBtnTextSuccess extends _Ktext {
  const KBtnTextSuccess(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: KTheme.of(context).buttonTextSuccess,
    );
  }
}
