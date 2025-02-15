import 'package:cerdascermatalkitab_app/constants.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
    {Key? key, 
    required this.question, 
    required this.indexAction, 
    required this.totalQuestions}) 
    : super(key: key);

// question title and the total number of question
  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestions: $question',
        style: const TextStyle(
          fontSize: 22.0,
          color: Colors.black,
        )
        ),
    );
  }
}