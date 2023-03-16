// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImcStore on ImcStoreBase, Store {
  late final _$heightAtom = Atom(name: 'ImcStoreBase.height', context: context);

  @override
  String get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(String value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  late final _$weightAtom = Atom(name: 'ImcStoreBase.weight', context: context);

  @override
  String get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(String value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  late final _$resultAtom = Atom(name: 'ImcStoreBase.result', context: context);

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$ImcStoreBaseActionController =
      ActionController(name: 'ImcStoreBase', context: context);

  @override
  void setHeight(String value) {
    final _$actionInfo = _$ImcStoreBaseActionController.startAction(
        name: 'ImcStoreBase.setHeight');
    try {
      return super.setHeight(value);
    } finally {
      _$ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeight(String value) {
    final _$actionInfo = _$ImcStoreBaseActionController.startAction(
        name: 'ImcStoreBase.setWeight');
    try {
      return super.setWeight(value);
    } finally {
      _$ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcImc() {
    final _$actionInfo = _$ImcStoreBaseActionController.startAction(
        name: 'ImcStoreBase.calcImc');
    try {
      return super.calcImc();
    } finally {
      _$ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
height: ${height},
weight: ${weight},
result: ${result}
    ''';
  }
}
