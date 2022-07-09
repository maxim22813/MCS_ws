import 'question.dart';

class Questions {

  final List<Question> _qList = [
    Question('_null', '_null', '_null', true),

    Question('Исходная позиция', 'Направо', 'Налево', true),

    //первый уровень
    Question('Правые Последствия', '1-ая опция правой ветки', '2-ая опция правой ветки', true),
    Question('Левые Последствия', '1-ая опция левой ветки', '2-ая опция левой ветки', true),

    // второй уровень

    Question('Первые Правые Последствия', 'опция правой ветки 1.1', 'опция правой ветки 1.2', true),
    Question('Вторые Правые Последствия', 'опция правой ветки 2.1', 'опция правой ветки 2.2', true),

    Question('Первые Левые Последствия', 'опция левой ветки 1.1', 'опция левой ветки 1.2', true),
    Question('Вторые Левые Последствия', 'опция левой ветки 2.1', 'опция левой ветки 2.2', true),

    // третий уровень
    Question('1-ая концовка', '_null', '_null', true),
    Question('2-ая концовка', '_null', '_null', true),
    Question('3-ая концовка', '_null', '_null', true),
    Question('4-ая концовка', '_null', '_null', true),
    Question('5-ая концовка', '_null', '_null', true),
    Question('6-ая концовка', '_null', '_null', true),
    Question('7-ая концовка', '_null', '_null', true),
    Question('8-ая концовка', '_null', '_null', true),

  ];

  int _qNum = 1;

  void checkQuestion (bool ans) {

      if (_qList[_qNum].getQuestionAnswer() == ans)
      {
        _qNum = _qNum*2;
      }
      else
      {
        _qNum = _qNum*2+1;
      }

  }

  String getQuestionText () => _qList[_qNum].getQuestionText();

  String getLeftAnswerText() => _qList[_qNum].getLeftAnswerText();

  String getRightAnswerText() => _qList[_qNum].getRightAnswerText();


  void startOver () {

     _qNum = 1;

  }

}