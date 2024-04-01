class QuestionBank {
  static List<Map<String, String>> questions = [
    {"question": "It is a country", "answer": "Japan"},
    {"question": "It is a movie", "answer": "Avatar"},
    {"question": "It is a historical figure", "answer": "Einstein"},
    {"question": "It is a programming language", "answer": "Python"},
    {"question": "It is an animal", "answer": "Lion"},
    {"question": "It is a city", "answer": "Paris"},
    {"question": "It is a famous painting", "answer": "MonaLisa"},
    {"question": "It is a city", "answer": "NewYork"},
    {"question": "He is an artist", "answer": "BOBDYLAN"},
    {"question": "It is a country", "answer": "NEPAL"},
    {"question": "He was a composer", "answer": "Mozart"},
    {"question": "It is a sport", "answer": "Football"},
    {"question": "It is a fruit", "answer": "Banana"},
    {"question": "It is a planet", "answer": "Mars"},
    {"question": "It is a color", "answer": "Blue"},
    {"question": "It is a car manufacturer", "answer": "Toyota"},
    {"question": "He is an actor", "answer": "TOMHARDY"},
    {"question": "It is a programming language", "answer": "Java"},
    {"question": "It is a musical instrument", "answer": "Guitar"},
    {"question": "It is a continent", "answer": "Africa"},
  ];
}

class UpdateQuestionBank {
  static String updateQuestion(String answer, int tries) {
    if (answer.toUpperCase() == "JAPAN") {
      return _constructJapanQuestion(tries);
    } else if (answer.toUpperCase() == "EINSTEIN") {
      return _constructEinsteinQuestion(tries);
    } else if (answer.toUpperCase() == "AVATAR") {
      return _constructAvatarQuestion(tries);
    } else if (answer.toUpperCase() == "PYTHON") {
      return _constructPythonQuestion(tries);
    } else if (answer.toUpperCase() == "LION") {
      return _constructLionQuestion(tries);
    } else if (answer.toUpperCase() == "PARIS") {
      return _constructParisQuestion(tries);
    } else if (answer.toUpperCase() == "MONALISA") {
      return _constructMonaLisaQuestion(tries);
    } else if (answer.toUpperCase() == "NEWYORK") {
      return _constructNewYorkQuestion(tries);
    } else if (answer.toUpperCase() == "BOBDYLAN") {
      return _constructBobDylanQuestion(tries);
    } else if (answer.toUpperCase() == "NEPAL") {
      return _constructAustraliaQuestion(tries);
    } else if (answer.toUpperCase() == "MOZART") {
      return _constructMozartQuestion(tries);
    } else if (answer.toUpperCase() == "FOOTBALL") {
      return _constructFootballQuestion(tries);
    } else if (answer.toUpperCase() == "BANANA") {
      return _constructBananaQuestion(tries);
    } else if (answer.toUpperCase() == "MARS") {
      return _constructMarsQuestion(tries);
    } else if (answer.toUpperCase() == "BLUE") {
      return _constructBlueQuestion(tries);
    } else if (answer.toUpperCase() == "TOYOTA") {
      return _constructToyotaQuestion(tries);
    } else if (answer.toUpperCase() == "TOM HARDY") {
      return _constructTomHardyQuestion(tries);
    } else if (answer.toUpperCase() == "JAVA") {
      return _constructJavaQuestion(tries);
    } else if (answer.toUpperCase() == "GUITAR") {
      return _constructGuitarQuestion(tries);
    } else if (answer.toUpperCase() == "AFRICA") {
      return _constructAfricaQuestion(tries);
    } else {
      return "Invalid answer!";
    }
  }

  static String _constructJapanQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a country!";
    } else if (tries == 2) {
      return "The country is in Asia";
    } else if (tries == 3) {
      return "Known for Samurai!";
    }
    else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructEinsteinQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "He is a person!";
    } else if (tries == 2) {
      return "He is a scientist!";
    } else if (tries == 3) {
      return "He is German!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructAvatarQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a movie!";
    } else if (tries == 2) {
      return "Directed by James Cameron!";
    } else if (tries == 3) {
      return "One of the highest grossing movies of all time!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructPythonQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a programming language!";
    } else if (tries == 2) {
      return "Named after a type of snake!";
    } else if (tries == 3) {
      return "Popular for web development!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructLionQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is an animal!";
    } else if (tries == 2) {
      return "Known as the king of the jungle!";
    } else if (tries == 3) {
      return "Males have a mane!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructParisQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a city!";
    } else if (tries == 2) {
      return "The capital of France!";
    } else if (tries == 3) {
      return "Famous for the Eiffel Tower!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructMonaLisaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a famous painting!";
    } else if (tries == 2) {
      return "Painted by Leonardo da Vinci!";
    } else if (tries == 3) {
      return "Located in the Louvre Museum!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructNewYorkQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a city!";
    } else if (tries == 2) {
      return "The largest city in the United States!";
    } else if (tries == 3) {
      return "Known as the Big Apple!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructBobDylanQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "He is a musician!";
    } else if (tries == 2) {
      return "Known for his folk and rock music!";
    } else if (tries == 3) {
      return "Has won a Nobel Prize in Literature!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructAustraliaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a country!";
    } else if (tries == 2) {
      return "Located in South Asia";
    } else if (tries == 3) {
      return "Land of Mount Everest!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructMozartQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "He was a composer!";
    } else if (tries == 2) {
      return "Famous for his classical music!";
    } else if (tries == 3) {
      return "Born in Austria!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructFootballQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a sport!";
    } else if (tries == 2) {
      return "Played with a round ball!";
    } else if (tries == 3) {
      return "Most popular sport in the world!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructBananaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a fruit!";
    } else if (tries == 2) {
      return "Yellow when ripe!";
    } else if (tries == 3) {
      return "Comes in bunches!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructMarsQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a planet!";
    } else if (tries == 2) {
      return "Named after the Roman god of war!";
    } else if (tries == 3) {
      return "Known as the Red Planet!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructBlueQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a color!";
    } else if (tries == 2) {
      return "Often associated with calmness!";
    } else if (tries == 3) {
      return "Primary color in the RGB color model!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructToyotaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a car manufacturer!";
    } else if (tries == 2) {
      return "Japanese multinational!";
    } else if (tries == 3) {
      return "Produces vehicles such as Corolla and Camry!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructTomHardyQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "He is an actor!";
    } else if (tries == 2) {
      return "Known for his versatile roles!";
    } else if (tries == 3) {
      return "Played Bane in The Dark Knight Rises!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructJavaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a programming language!";
    } else if (tries == 2) {
      return "Introduced by Sun Microsystems in 1995!";
    } else if (tries == 3) {
      return "Platform-independent!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructGuitarQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a musical instrument!";
    } else if (tries == 2) {
      return "Has strings and can be acoustic or electric!";
    } else if (tries == 3) {
      return "Commonly used in various genres of music!";
    } else {
      return "Too many tries! You lose!";
    }
  }

  static String _constructAfricaQuestion(int tries) {
    if (tries == 0) {
      return "Guess the word!";
    } else if (tries == 1) {
      return "It is a continent!";
    } else if (tries == 2) {
      return "Second largest continent by land area!";
    } else if (tries == 3) {
      return "Home to diverse cultures and wildlife!";
    } else {
      return "Too many tries! You lose!";
    }
  }
}
