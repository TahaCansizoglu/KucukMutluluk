import 'dart:convert';
import 'dart:math';

import 'package:englishPracticeApp/model/questions.dart';
import 'package:englishPracticeApp/service/service.dart';
import 'package:englishPracticeApp/view/quiz_view2.dart';
import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  Deneme({Key key}) : super(key: key);

  @override
  _DenemeState createState() => _DenemeState();
}

List<String> list = new List();

class _DenemeState extends State<Deneme> {
  var x = new List.generate(1, (_) => new List(5));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Card(
                child: FutureBuilder<List<Questions>>(
                    future: getPost(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        var soru = snapshot.data.length;
                        var rast = Random().nextInt(soru);
                        list.add(snapshot.data[rast].englishTurkish.question
                            .toString());
                        for (var i = 0; i < 4; i++) {
                          list.add(snapshot.data[rast].englishTurkish.answers[i]
                              .toString());
                        }
                        print(list);
                        return QuizView(list: list);
                      } else
                        return CircularProgressIndicator();
                    }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
