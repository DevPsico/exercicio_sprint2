// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TarefaModel on _TarefaModelBase, Store {
  late final _$titleAtom =
      Atom(name: '_TarefaModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$checkAtom =
      Atom(name: '_TarefaModelBase.check', context: context);

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  late final _$_TarefaModelBaseActionController =
      ActionController(name: '_TarefaModelBase', context: context);

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_TarefaModelBaseActionController.startAction(
        name: '_TarefaModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TarefaModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_TarefaModelBaseActionController.startAction(
        name: '_TarefaModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_TarefaModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
