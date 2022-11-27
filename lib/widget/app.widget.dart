import 'package:exercicio_sprint2/view/home.page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio SPRINT 2',
      theme: ThemeData(primaryColor: Colors.red),
      home: const HomePage(),
    );
  }
}
