import 'package:synthax/synthax.dart' as synthax;
import 'package:synthax/types.dart';
import 'package:test/test.dart';

void main(List<String> arguments) {
  var types = Types();
  print('Start');
  types.showIntergers();
  types.showFloats();
  types.showBools();
  types.showStrings();
  types.showLists();
  types.showSets();
  types.showMaps();
}
