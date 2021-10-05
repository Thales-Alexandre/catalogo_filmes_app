import 'package:catalogo_filmes_app/screens/catalogofilmes_tela.dart';
import 'package:catalogo_filmes_app/widgets/catalogofilmes_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(new CatalogoFilmesApp());
}

class CatalogoFilmesApp extends StatelessWidget {
  const CatalogoFilmesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(                  
        body: CatalogoFilmesWidget(),
      ),
    );
  }
}
