import 'package:flutter/material.dart';
import 'package:flutter_app_mcq/Quizz.dart';
//import './for2.dart';
//import './new.dart';


void main(){
  runApp(
      new MaterialApp(
        home: new CoronaQuiz(),
      )
  );
}

class CoronaQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new CoronaQuizState();
  }
}

class CoronaQuizState extends State<CoronaQuiz>{
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Multiple Choice Quiz"),
       backgroundColor: Colors.blue,
     ),


     body: new Container(
          margin: const EdgeInsets.all(15.0),
       child: new Column(
          
         crossAxisAlignment: CrossAxisAlignment.stretch,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[

           new MaterialButton(
             height: 50.0,
               color: Colors.green,
               onPressed: startQuiz,
               child: new Text("Begin",
                 style: new TextStyle(
                     fontSize: 18.0,
                     color: Colors.white
                 ),)
           )
         ],
       ),
     ),


   );
  }

  void startQuiz(){
   setState(() {
     Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayQuiz()));
   });
  }
}

