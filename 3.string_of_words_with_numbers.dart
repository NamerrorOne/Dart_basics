class SearchNumInString {
  SearchNumInString();

  List<num> getNumbersFromString(String data) {
    List<num> result = [];
    List splittedData = data.split('');

    for (String element in splittedData) {
      int? number = int.tryParse(element);
      number != null ? result.add(number) : '';
    }

    return result;
  }
}
