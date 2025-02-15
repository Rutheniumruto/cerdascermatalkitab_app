import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/question_model.dart'; //question model
import '../widgets/questions_widget.dart'; //question
import '../widgets/next_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Question> _questions = [
    Question(
      id:'1',
      title: 'Siapa malaikat yang membawa kabar tentang kelahiran Yesus?',
      options: {'Mikhael': false, 'Gabriel': true, 'Ariel': false, 'Lucifer': false},
       ),
      Question(
      id:'2',
      title: 'Siapa yang ditempatkan di perapian yang berkobar-kobar?',
      options: {'Sadrakh, Mesakh, Abednego': true, 'Daniel, Saul, Yonatan': false, 'Yunus, Yusuf, Yosua': false, 'Kain dan Habel': false},
       ),
  ];

  int index = 0;

  void nextQuestion(){
    if(index == _questions.length -1){
      return;
    }else{
    setState((){
      index++;
    });
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Cerdas Cermat Alkitab'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [

              QuestionWidget(
                indexAction: index, //currently at 0
                question: _questions[index].title, //the first question in
                totalQuestions: _questions.length, //total length of the list
              ),
              const Divider(color: Colors.black
              ,),
            ],
          ),
        ),


        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: NextButton(
            nextQuestion: nextQuestion,
            ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}