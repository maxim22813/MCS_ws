class Question {
  String _qText = '';
  String _lText = '';
  String _rText = '';
  bool _qAns = false;

  Question(this._qText, this._lText, this._rText, this._qAns);

  String getQuestionText() => _qText;

  String getLeftAnswerText() => _lText;

  String getRightAnswerText() => _rText;

  bool getQuestionAnswer() => _qAns;


}