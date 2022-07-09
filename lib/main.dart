import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'questions.dart';
import 'const.dart';

void main() => runApp(const Ques());

class Ques extends StatefulWidget {
  const Ques({Key? key}) : super(key: key);

  @override
  State<Ques> createState() => _QuesState();
}

Questions Q = Questions();


class _QuesState extends State<Ques> {

  bool obscure = false;
  int count =0;

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      Q.getQuestionText (),
                      style: GoogleFonts.oswald(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 28
                          ),),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: !obscure,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          count++;
                          Q.checkQuestion (true);
                           if(count==3){
                             obscure = true;
                           }
                        });
                      },
                      child: Text(
                        Q.getLeftAnswerText(),
                        style: inButtonsText,),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: !obscure,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                          setState(() {
                            count++;
                            Q.checkQuestion (false);
                             if(count==3){
                               obscure = true;
                             }
                          }
                          );
                      },

                        child: Text(
                          Q.getRightAnswerText(),
                          style: inButtonsText,
                        ),
                      style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        Q.startOver();
                        count = 0;
                        obscure = false;
                      });
                    },
                      child: const Text(
                        'Начать сначала',
                        style: inButtonsText,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.white60),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
