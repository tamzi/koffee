import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koffee/ui/theming/utils/scale.dart' as scale;
import 'package:koffee/ui/theming/theme.dart';
import 'atoms/kcolors.dart';
import 'atoms/ktexts.dart';
import 'components/k_plain_buttons.dart';
import 'components/kbuttons.dart';
/*
more information about how to set this screen up and use check out:
  https://github.com/tamzi/core_theming
*/


void main() {
  runApp(KTheme(
      child: const GetMaterialApp(
        title: "Koffee Component Gallery",
        home: GalleryRoot(),
  )));
}

class GalleryRoot extends StatelessWidget {
  const GalleryRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KThemeColors.white,
        appBar: AppBar(
          title: const KAppBarHeader(
            'Chatty Component Gallery',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: const KTitle("Chatty Texts"),
                subtitle: const KDescriptionText(
                  "This will show a list of all the text items.",
                ),
                onTap: () {
                  Get.to(() => const TextsGallery());
                },
              ),
              const Divider(),

              /// Buttons
              ListTile(
                title: const KTitle("Chatty Buttons"),
                subtitle: const KDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Get.to(() => const ButtonsGallery());

                },
              ),
              const Divider(),
              ListTile(
                //TextButton
                title: const KTitle("Chatty Cards"),
                subtitle: const KDescriptionText(
                    "Chatty Card Gallery. Can be tapped."),
                onTap: () {
                  Get.to(() => const CardGallery());
                },
              ),
              const Divider(),

              /// ListsGallery
              ListTile(
                  //SlideButton
                  title: const KTitle("Chatty Lists Gallery"),
                  subtitle: const KDescriptionText(
                      "Tiles layout with various information. Can be tapped."),
                  onTap: () {
                    Get.to(() => const ListTilesGallery());
                  }),
              const Divider(),

              /// JobCardGallery
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
class TextsGallery extends StatelessWidget {
  const TextsGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KThemeColors.lightGray,
        appBar: AppBar(
          title: const KAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  // Content Texts
                  KHeader('This is a Header'),
                  Divider(),
                  KTitle('This is a Title'),
                  Divider(),
                  KDescriptionText(
                    "This is a description.",
                  ),
                  Divider(),
                  KBodyText('This is a body Text'),
                  Divider(),
                  // AppBar Texts
                  KAppBarHeader('This is an AppBar Header'),
                  Divider(),
                  KAppBarDescription('This is an AppBar Description'),
                  Divider(),
                ],
              ),
            ),
          ),
        ));
  }
}

//Button Widgets
class ButtonsGallery extends StatelessWidget {
  const ButtonsGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const KAppBarHeader('Chatty Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: KButtonBlack(
                    label: 'Apply Now',
                    onPressed: () {
                      print('You tapped on ButtonBlack with text Apply Now');
                    },
                  ),
                ),
                Divider(),
                SizedBox(
                  width: double.infinity,
                  child: KButtonGrey(
                    label: 'Delivered',
                    onPressed: () {
                      print('You tapped on ButtonGrey with text Delivered');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: KButtonRed(
                    label: 'Apply for job',
                    onPressed: () {
                      print('You tapped on ButtonRed with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: KPlainFlatButton(
                    label: 'Am CPlainFlatButton',
                    onPressed: () {
                      print(
                          'You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: KWarningFlatButton(
                    label: 'Am CWarningFlatButton',
                    onPressed: () {
                      print(
                          'You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: KSuccessFlatButton(
                    label: 'Am CSuccessFlatButton',
                    onPressed: () {
                      print(
                          'You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
              ]),
            ),
          ),
        ));
  }
}

class CardGallery extends StatelessWidget {
  const CardGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const KAppBarHeader('Chatty Info Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: const <Widget>[]),
            ),
          ),
        ));
  }
}

class CCardGallery extends StatelessWidget {
  const CCardGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const KAppBarHeader('Chatty Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}

class ListTilesGallery extends StatelessWidget {
  const ListTilesGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const KAppBarHeader('List Tiles'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: KThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: const <Widget>[]),
            ),
          ),
        ));
  }
}
