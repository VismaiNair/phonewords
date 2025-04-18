/// Takes a phone number, as a string, and returns the phone number in all-number format. The last 4 letters are expected to be a word.
String findNumberFromWord(String fullPhoneNumber) {
  // Phone keypad mapping: number -> letters (2d array where each sub-array represents a number)
  const List<List<String>> phoneKeypadMapping = [
    ["a", "b", "c"],
    ["d", "e", "f"],
    ["g", "h", "i"],
    ["j", "k", "l"],
    ["m", "n", "o"],
    ["p", "q", "r", "s"],
    ["t", "u", "v"],
    ["w", "x", "y", "z"]
  ];

  const int wordLength = 4;

  String word = fullPhoneNumber.substring(-wordLength).toLowerCase();
  String prefix =
      fullPhoneNumber.substring(0, fullPhoneNumber.length - wordLength);
  
  /// Validate that it is at least wordLength characters long
  if (fullPhoneNumber.length < wordLength) {
    throw Exception(
        "Invalid input: $fullPhoneNumber. Length must be at least $wordLength.");
  }

  /// Validate word contains only letters
  RegExp regex = RegExp(r'^[a-z]+$');
  if (!regex.hasMatch(word)) {
    throw Exception("Invalid input: $word. Only letters are allowed.");
  }

  /// Validate prefix contains only numbers and dashes
  regex = RegExp(r'^[0-9-]+$');
  if (!regex.hasMatch(prefix)) {
    throw Exception("Invalid input: $prefix. Only numbers and dashes are allowed.");
  }

  String phoneNum = "$prefix-";

  for (int i = 0; i < word.length; i++) {
    for (int j = 0; j < phoneKeypadMapping.length; j++) {
      if (phoneKeypadMapping[j].contains(word[i])) {
        phoneNum = phoneNum + (j + 2).toString();
        break;
      }
    }
  }

  return phoneNum;
}
