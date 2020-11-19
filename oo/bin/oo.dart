import 'package:oo/oo.dart' as oo;

import 'abstract_classes/abstract_class_impl.dart';
import 'classes/animal.dart';
import 'classes/birds.dart';
import 'classes/dog.dart';

void main(List<String> arguments) {
  var animal = Animal();
  animal.name = 'Dog';
  animal.numberOfPaws = 4;
  animal.age = 12;

  var eagle = Bird();
  eagle.name = 'Kenya';
  eagle.numberOfPaws = 2;
  eagle.numberOfWings = 2;
  eagle.age = 25;

  print(eagle);
  print(animal);
  print(eagle is Animal);
  print(animal is Bird);
  print('ABSTRACT CLASSES');
  var impl = MyContractImpl();
  impl.loadBalances();
  impl.showBalances();
  impl.sendMoney();
  impl.withdrawMoney();
  print('MIXINS');
  var dog = Dog();
  dog.name = 'Jenkins';
  print(dog.drinksMilk ? '${dog.name} is a mamal' : 'not a mamal');
  dog.bark();
}
