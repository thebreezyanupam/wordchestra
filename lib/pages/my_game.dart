import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordchestra/model/guess_letters.dart';

import '../model/question_bank.dart';

class MyGamePage extends StatefulWidget {
  const MyGamePage({Key? key}) : super(key: key);

  @override
  State<MyGamePage> createState() => _MyGamePageState();
}

class _MyGamePageState extends State<MyGamePage> {
  var chars = "QWERTYUIOPASDFGHJKLZXCVBNM".toUpperCase();

  var tries = 0;
  Set<String> selectedChar = {};
  String currentQuestion = '';
  String currentAnswer = '';
  bool gameOver = false;
  int _currentQuestionIndex = 0; // Add a variable to track the current question index
  bool correctGuess = false;


  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    final questionIndex = _getNextQuestionIndex(); // Use _getNextQuestionIndex instead of _getRandomQuestionIndex
    final question = QuestionBank.questions[questionIndex];
    currentAnswer = question['answer']!.toUpperCase();
    currentQuestion = "Guess the word!";
    selectedChar.clear();
    tries = 0;
    gameOver = false;
    correctGuess = false;
  }

  int _getNextQuestionIndex() { // New method to get the next question index sequentially
    final currentIndex = _currentQuestionIndex;
    _currentQuestionIndex = (_currentQuestionIndex + 1) % QuestionBank.questions.length;
    return currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: correctGuess? Colors.green : Colors.indigo[200],
      appBar: AppBar(
        title: Container(
          child: Text(
            "WORDCHESTRA",
            style: GoogleFonts.roboto(fontSize: 18),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      correctGuess ? "You guessed it!" : currentQuestion, // Show "You guessed it!" if the correct answer has been guessed
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.indigo[300],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: currentAnswer
                          .split("")
                          .map((e) => guessLetter(
                        e,
                        !selectedChar.contains(e.toUpperCase()),
                      ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.indigo[200],
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 7,
                mainAxisSpacing: 8,
                crossAxisSpacing: 4,
                children: chars.split("").map((e) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // Adjust padding
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      alignment: Alignment.center,
                    ),
                    onPressed: selectedChar.contains(e.toUpperCase()) || gameOver
                        ? null
                        : () {
                      setState(() {
                        selectedChar.add(e.toUpperCase());
                        if (!currentAnswer.split("").contains(e.toUpperCase())) {
                          tries++;
                          currentQuestion = UpdateQuestionBank.updateQuestion(currentAnswer, tries);
                          if(tries>3){
                            gameOver=true;
                          }
                        } else if (Set.from(currentAnswer.split("")).difference(selectedChar).isEmpty) {
                          correctGuess = true; // Set correctGuess to true
                          Future.delayed(Duration(seconds: 1), () {
                            setState(() {
                              _initializeGame(); // Delay initialization of next question by 1 second
                            });
                          });
                        }
                      });
                    },
                    child: Text(
                      e,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
