String numberFromString(String phoneNumber) {
  const Map<String, String> phoneLetterMap = {
    "A": "2",
    "B": "2",
    "C": "2",
    "D": "3",
    "E": "3",
    "F": "3",
    "G": "4",
    "H": "4",
    "I": "4",
    "J": "5",
    "K": "5",
    "L": "5",
    "M": "6",
    "N": "6",
    "O": "6",
    "P": "7",
    "Q": "7",
    "R": "7",
    "S": "7",
    "T": "8",
    "U": "8",
    "V": "8",
    "W": "9",
    "X": "9",
    "Y": "9",
    "Z": "9",
  };

  String sanitize(String unsanitizedPhoneNumber) { // Added type hint for clarity
    RegExp nonAlphanumericRegex = RegExp(r'[^a-zA-Z0-9]');
    String sanitizedPhoneNumber = unsanitizedPhoneNumber.replaceAll(nonAlphanumericRegex, '');
    return sanitizedPhoneNumber.toUpperCase();
  }

  // Sanitize the input phone number first and store the result
  String processedNumber = sanitize(phoneNumber);

  StringBuffer result = StringBuffer();
  for (int i = 0; i < processedNumber.length; i++) {
    String char = processedNumber[i]; // Get the current character

    // Check if the character is a letter in our map
    if (phoneLetterMap.containsKey(char)) {
      result.write(phoneLetterMap[char]); // Append the corresponding number
    } else {
      // If it's a digit (0-9) or any other character not in the map
      // (which should only be digits after sanitization), append it directly.
      result.write(char);
    }
  }

  return result.toString(); // Return the final string
}