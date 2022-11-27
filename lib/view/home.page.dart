import 'dart:html';

import 'package:exercicio_sprint2/controller/home.controller.dart';
import 'package:exercicio_sprint2/models/tarefa_model.dart';
import 'package:exercicio_sprint2/widget/item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _dialog() {
    var model = TarefaModel(title: '');

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Adicionar tarefa'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nova Obrigação',
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  controller.addItemTarefa(model);
                },
                child: const Text('Salvar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Desistir'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(hintText: 'Localizar tarefa.'),
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.listTarefa.length,
            itemBuilder: (_, index) {
              var item = controller.listTarefa[index];
              return ItemWidget(
                item: item,
                removeTarefa: () {
                  controller.removeItemTarefa(item);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_alarm_rounded),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
