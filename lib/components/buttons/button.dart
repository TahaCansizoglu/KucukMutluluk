import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:englishPracticeApp/components/style/text/text_style.dart';
import 'package:englishPracticeApp/view/deneme.dart';
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

class QuizButton extends StatefulWidget {
  QuizButton({
    Key key,
    @required this.txt,
    @required this.answerTxt,
  }) : super(key: key);

  final String txt;
  final String answerTxt;

  @override
  _QuizButtonState createState() => _QuizButtonState();
}

class _QuizButtonState extends State<QuizButton> {
  Color colortoshow = temaSariRenk;

  Color right = Colors.green;

  Color wrong = Colors.red;

  void checkanswer() {
    if (widget.answerTxt == widget.txt) {
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {
          checkanswer();
          nextquestion();
        },
        child: Text(
          widget.txt,
          style: TextStyle(
              color: temaBeyazRenk, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        color: colortoshow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  void nextquestion() {
    setState(() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Deneme()));
    });
  }
}
