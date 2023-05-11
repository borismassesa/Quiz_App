class QuizQuestion {
  const QuizQuestion(this.question, this.answers); // constructor function

  final String question; // field variable
  final List<String> answers; // field variable

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
