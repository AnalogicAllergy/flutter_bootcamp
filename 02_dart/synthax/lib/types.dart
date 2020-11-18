class Types {
  void showIntergers() {
    var i = 0;
    int j = 25;
    print('RUNTIMETYPE');
    print(i.runtimeType);
    print(j.runtimeType);

    print('Operacoes inerentes ao tipo');
    print(i.isEven);
    print(j.isNegative);
    print(i.roundToDouble());
  }

  void showFloats() {
    var i = 2.6;
    double j = 2.6902;

    print('Runtime Type');
    print(i.runtimeType);
    print(j.runtimeType);

    print('Operacoes inerentes ao tipo');
    print(i.sign);
    print(j.isNegative);
  }

  void showStrings() {
    var s1 = 'Hello Dr. Seuss';
    var s2 = "Double quoted strings are not well accepted";
    var name = 'Wilson\'s Heart';
    var nameDoubleQuotesToInterpolate = "Wilson's Heart";
    var stringInterpolated = 'S05E22 -> $name';
    var stringInterpolatedDoubleQuotes = 'S05e22 -> $name';
    print('String generals');
    print(s1);
    print(s2);
    print(stringInterpolated);
    print(stringInterpolatedDoubleQuotes);
    print('Multiline Strings');
    var multiline = '''abc
    def
    ghi''';
    print(multiline);
  }

  void showBools() {
    var name = 'Willian';
    //translates to a bool
    var isNameValid = name.isNotEmpty;
    print(isNameValid);
    assert(isNameValid == true);
  }

  void showLists() {
    var list = ['Car', 'Bike', 123, true];
    print('Size');
    print(list.length);

    var constantList = const [1, 2, 3];
    print(constantList);
    try {
      constantList.add(12);
    } catch (e) {
      print(e);
    }

    var newList = [...list, 22, 99, 'Monkey'];
    print('Spreaded list ...list');
    print(newList);
    print('Collection if');
    var promoAtive = true;
    var items = [
      'Home',
      'Plants',
      'Eletrical',
      if (promoAtive) 'Outlet',
      'Garden'
    ];
    print(items);
  }

  void showSets() {
    var teams = {'Flamengo', 'Vasco', 'Fluminense', 'Madureira'};
    print('Can i add America? ${teams.add('America')}');
    print('Can i add Flamengo again? ${teams.add('Flamengo')}');
    print('Can i add a diferent type to my set? NO ${teams.add('Botafogo')}');
  }

  void showMaps() {
    var gifts = {
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings'
    };
    print('Traverse a map');
    gifts.forEach((key, value) {
      print('key $key -- value $value');
    });
    gifts.addAll({'third': 'necklace'});
    print(gifts);
    print('removing an entry');
    gifts.removeWhere((key, value) => key == 'third');
    print(gifts['third']);
  }
}
