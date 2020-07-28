import 'dart:async';
import 'package:flutter/material.dart';
import '../components/cards/quiz_card.dart';
import '../components/buttons/button.dart';

class QuizView extends StatefulWidget {
  List<String> list;
  QuizView({Key key, @required this.list}) : super(key: key);
  @override
  _QuizViewState createState() => _QuizViewState(list);
}

class _QuizViewState extends State<QuizView> {
  int _counter = 30;
  Timer _timer;
  List<String> list;
  _QuizViewState(List<String> list) {
    this.list = list;
  }

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          //NEXT QUESTION
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _startTimer());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff11172f),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text("00:" + _counter.toString(), //FIXME
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  list[0],
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              QuizCard(),
              QuizButton(
                txt: list[1],
              ),
              QuizButton(
                txt: list[2],
              ),
              QuizButton(
                txt: list[3],
              ),
              QuizButton(
                txt: list[4],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
