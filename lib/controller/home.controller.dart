import 'package:exercicio_sprint2/models/tarefa_model.dart';
import 'package:mobx/mobx.dart';

part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<TarefaModel> listTarefa = [
    TarefaModel(title: 'Tarefa 1', check: true),
  ].asObservable();

  @action
  addItemTarefa(TarefaModel tarefaModel) {
    listTarefa.add(tarefaModel);
  }

  @action
  removeItemTarefa(TarefaModel tarefaModel) {
    listTarefa.removeWhere((item) => item.title == tarefaModel.title);
  }
}
