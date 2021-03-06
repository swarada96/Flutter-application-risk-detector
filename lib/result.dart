import 'package:flutter/material.dart';
import 'package:flutter_app_mcq/question_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Result extends StatelessWidget{
  int score, totalQuestion, correct, incorrect, notattempted;
  Result({this.score, this.totalQuestion, this.correct, this.incorrect, this.notattempted});

  @override
  String greeting ="";

  @override
  void initState(){
    //super.initState();
    var percentage =(this.score/(this.totalQuestion*20))*100;
    if (percentage >= 75){
      greeting = "Get tested by a doctor";
    }else if(percentage >50 && percentage < 75){
      greeting = "Self Quarantine is highly suggested";
    }else if(percentage>25 && percentage <50){
      greeting = "You might need to self quarantine";
    }else if (percentage<25){
      greeting = "You are safe";
    }
  }


  //@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: SfCircularChart(
            series: <CircularSeries>[
              PieSeries<QuestionModel, String>(
                dataSource: QuestionModel,
                xValueMapper: (QuestionModel data,_) => data.question,
                startAngle: 270,
               // yValueMapper:  (QuestionModel data,_) => data.answer,
                endAngle: 90,
              )
            ],
          )
        ),
      )
    );
  }


}