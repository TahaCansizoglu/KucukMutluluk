import 'package:englishPracticeApp/components/buttons/button.dart';

import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:englishPracticeApp/components/style/text/text_style.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: temaAnaRenk,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[titleText, welcomeText],
              ),
            ),
            buildButtons(),
          ],
        ),
      ),
    );
  }

  Padding buildButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 50, bottom: 50, top: 185),
      child: Column(
        children: <Widget>[
          StartButton(),
          SizedBox(
            height: 25,
          ),
          HighScoreButton(),
          SizedBox(
            height: 25,
          ),
          ProfileButton()
        ],
      ),
    );
  }
}
