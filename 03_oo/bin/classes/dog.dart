import '../mixin/MamalMixin.dart';
import 'animal.dart';

class Dog extends Animal with Mamal {
  void bark() {
    print('Wooof\n' * 5);
  }

  @override
  String toString() {
    return 'I am a mamal ';
  }
}
