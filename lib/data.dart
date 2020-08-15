import'package:flutter_app_mcq/question_model.dart';

List<QuestionModel> getQuestions(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion("I went out recently");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion("I did not wear a mask");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion("I came in close contact with anyone");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion("They are tested positive");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  return questions;

}
