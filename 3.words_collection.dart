class WordsCollection {
  const WordsCollection();

  Map getMapFromCollection(List words) {
    Map countedValues = {};

    for (int i = 0; i < words.length; i++) {
      words[i] = words[i].toString().toLowerCase();

      if (countedValues.containsKey(words[i])) {
        countedValues[words[i]] += 1;
      }
      if (!countedValues.containsKey(words[i])) {
        countedValues[words[i]] = 1;
      }
    }

    return countedValues;
  }
}
