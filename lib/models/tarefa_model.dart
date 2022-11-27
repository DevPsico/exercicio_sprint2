import 'package:mobx/mobx.dart';

part 'tarefa_model.g.dart';

class TarefaModel = _TarefaModelBase with _$TarefaModel;

abstract class _TarefaModelBase with Store {
  _TarefaModelBase({required this.title, this.check = false});

  @observable
  String title = '';

  @observable
  bool check = true;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;
}
