import 'package:exercicio_sprint2/models/tarefa_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item, required this.removeTarefa});

  final TarefaModel item;
  final Function removeTarefa;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => ListTile(
        title: Text('${item.title}'),
        leading: Checkbox(
          value: item.check,
          onChanged: (value) {
            item.setCheck(value!);
          }, // aqui tava BOOL mas a iIDE n aceitou
        ),
        //Aqui seria o EXCLUIR
        /* trailing: IconButton(
          color: Colors.red,
          icon: Icon(Icons.playlist_remove_rounded),
          onPressed: () {}, //removeTarefa,
        ),*/
      ),
    );
  }
}
