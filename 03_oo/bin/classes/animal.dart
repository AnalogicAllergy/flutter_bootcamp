class Animal {
  String name;
  int numberOfPaws;
  int animalAge;
  double get weight => 40;
  set age(int value) => animalAge = value;

  Animal({name, numberOfPaws});

  @override
  String toString() {
    return 'Nome: $name - Number of paws: $numberOfPaws and Animal age is: $animalAge';
  }
}
