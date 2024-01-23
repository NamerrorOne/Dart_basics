class NumbersAsWords {
  NumbersAsWords();

  final Map numbersData = {
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  List<int> getNumbersList(List<String> words) {
    List<int> result = [];

    for (String word in words) {
      numbersData.forEach((key, value) {
        word == key ? result.add(numbersData[word]) : '';
      });
    }

    return result;
  }
}
