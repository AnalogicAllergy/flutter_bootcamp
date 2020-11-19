import 'animal.dart';

class Bird extends Animal {
  int numberOfWings;

  Bird({numberOfWings});

  @override
  String toString() {
    return 'Nome: $name - Number of paws: $numberOfPaws and Animal age is: $animalAge and has $numberOfWings wings';
  }
}
