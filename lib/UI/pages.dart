import 'package:flutter/material.dart';

final pages = [
  new PageViewModel(
      const Color(0xFF548CFF),
      'assets/mountain.png',
      'Ready To Travel',
      'Choose your destination, Plan your trip. Pick the best place for your holiday',
      'assets/plane.png'),
  new PageViewModel(
      const Color(0xFFE4534D),
      'assets/world.png',
      'Select the Date',
      'Select the day, pick your ticket. we give you the best price. We guaranted!',
      'assets/calendar.png'),
  new PageViewModel(
    const Color(0xFFFF682D),
    'assets/home.png',
    'Feels Like Home',
    'Enjoys your holidays! Dont forget to take a photo!',
    'assets/house.png',
  ),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: viewModel.color),
        child: ListView(
          children: <Widget>[
            Opacity(
              opacity: percentVisible,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Transform(
                    transform: Matrix4.translationValues(
                        0.0, 50.0 * (1.0 - percentVisible), 0.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                      child: Image.asset(viewModel.heroAssetPath,
                          width: 200.0, height: 200.0),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(
                        0.0, 30.0 * (1.0 - percentVisible), 0.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(
                        viewModel.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FlamanteRoma',
                          fontSize: 34.0,
                        ),
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(0.0, 30.0 * (1.0 - percentVisible), 0.0),
                    child: Padding(padding: EdgeInsets.only(bottom: 75.0),
                      child: Text(viewModel.body,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'FlamanteRomaItalic',
                        fontSize: 18.0,
                      ),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;

  PageViewModel(
    this.color,
    this.heroAssetPath,
    this.title,
    this.body,
    this.iconAssetPath,
  );
}
