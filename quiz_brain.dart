import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'Swiss terletak di Benua Amerika', questionAnswer: false),
    Question(
        questionText: 'Indonesia terdiri dari 33 provinsi',
        questionAnswer: false),
    Question(
        questionText: 'Menara Eiffel terletak di negara Perancis',
        questionAnswer: true),
    Question(
        questionText: 'Rusia adalah negara terluas di dunia',
        questionAnswer: true),
    Question(
        questionText:
            'Negara yang memiliki julukan Negeri Paman Sam adalah Amerika',
        questionAnswer: true),
    Question(
        questionText:
            'Negara yang memiliki julukan Negeri matahari terbit adalah Korea',
        questionAnswer: false),
    Question(
        questionText: 'Ibu kota Australia adalah Canberra',
        questionAnswer: true),
    Question(
        questionText:
            'New Zealand memiliki 2 pulau, yaitu Pulau Selatan dan Pulau Utara',
        questionAnswer: true),
    Question(
        questionText: 'Vatikan adalah negara yang memiliki luas terkecil',
        questionAnswer: true),
    Question(
        questionText: 'China adalah negara dengan populasi terbanyak',
        questionAnswer: true),
    Question(
        questionText: 'Mesir terkenal dengan piramida kuno',
        questionAnswer: true),
    Question(
        questionText: 'Thailand merupakan salah satu negara teraman di dunia',
        questionAnswer: false),
    Question(
        questionText: 'Benua terbesar di dunia adalah Afrika',
        questionAnswer: false),
    Question(
        questionText: 'Ibu kota Jerman adalah Berlin', questionAnswer: true),
    Question(
        questionText: 'Finland adalah salah satu negara paling bahagia',
        questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - create isFinished method that checks the last questions.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Menghitung jumlah pertanyaan
  int getTotalQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 4 Part B - Create a reset() method that sets the questionNumber back to 0
  void reset() {
    _questionNumber = 1;
  }
}
