import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:englishPracticeApp/components/style/text/text_style.dart';
import 'package:flutter/material.dart';

import '../style/color/colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: startText,
        color: temaTuruncuRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class HighScoreButton extends StatelessWidget {
  const HighScoreButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: highScoreText,
        color: temaSariRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: profileText,
        color: temaSariRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: RaisedButton(
            onPressed: () {},
            child: Text(
              "Oyna",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            color: temaBeyazRenk),
      ),
    );
  }
}

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key key,
    @required this.txt,
  }) : super(key: key);

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          txt,
          style: TextStyle(
              color: temaBeyazRenk, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        color: temaSariRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
