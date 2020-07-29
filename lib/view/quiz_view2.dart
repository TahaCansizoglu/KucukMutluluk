import 'dart:async';
import 'dart:math';
import 'package:englishPracticeApp/model/questions.dart';
import 'package:englishPracticeApp/view/deneme.dart';
import 'package:flutter/material.dart';
import '../components/cards/quiz_card.dart';
import '../components/buttons/button.dart';

class QuizView extends StatefulWidget {
  List<String> list;
  List<Questions> data;
  QuizView({Key key, @required this.list, @required this.data})
      : super(key: key);
  @override
  _QuizViewState createState() => _QuizViewState(list, data);
}

class _QuizViewState extends State<QuizView> {
  int _counter = 30;
  Timer _timer;
  var random_array;
  int index = 1;
  int j = 1;
  List<String> list;
  List<Questions> data;
  _QuizViewState(List<String> list, List<Questions> data) {
    this.list = list;
    this.data = data;
  }

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(10));
      random_array = distinctIds.toSet().toList();
      if (random_array.length < 10) {
        continue;
      } else {
        break;
      }
    }
    index = random_array[0];
    print(index);
    print(random_array);
  }

  void nextquestion() {
    setState(() {
      if (j < 10) {
        index = random_array[j];
        j++;
      } else {
        //Navigator.of(context).pushReplacement(MaterialPageRoute(
        // builder: (context) => resultpage(marks: marks),
        // ));
      }
    });
  }

  /* void _startTimer() {
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
  }*/
  void name() {}
  @override
  void initState() {
    super.initState();
    genrandomarray();
    //nextquestion();
    // WidgetsBinding.instance.addPostFrameCallback((_) => _startTimer());
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
                    data[index].englishTurkish.question,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                QuizCard(
                  urlImage: "sdasd",
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[0].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                  },
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[1].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                  },
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[2].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[3].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: nextquestion,
            ),
          ),
        ));
  }
}
