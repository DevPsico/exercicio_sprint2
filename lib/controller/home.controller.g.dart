// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$listTarefaAtom =
      Atom(name: '_HomeControllerBase.listTarefa', context: context);

  @override
  ObservableList<TarefaModel> get listTarefa {
    _$listTarefaAtom.reportRead();
    return super.listTarefa;
  }

  @override
  set listTarefa(ObservableList<TarefaModel> value) {
    _$listTarefaAtom.reportWrite(value, super.listTarefa, () {
      super.listTarefa = value;
    });
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  dynamic addItemTarefa(TarefaModel tarefaModel) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addItemTarefa');
    try {
      return super.addItemTarefa(tarefaModel);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItemTarefa(TarefaModel tarefaModel) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeItemTarefa');
    try {
      return super.removeItemTarefa(tarefaModel);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTarefa: ${listTarefa}
    ''';
  }
}
