import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/provider/filmes.dart';
import 'package:catalogo_filmes_app/widgets/catalogofilmes_widget.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogoFilmesTela extends StatefulWidget {
  const CatalogoFilmesTela({Key? key}) : super(key: key);

  @override
  State<CatalogoFilmesTela> createState() => _CatalogoFilmesTelaState();
}

class _CatalogoFilmesTelaState extends State<CatalogoFilmesTela> {
  Widget _appBarTitulo = Text('Filmes');
  bool buscando = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.CorFundo,
      drawer: DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: AppCores.CorPrincipal,
        title: Center(
          child: _appBarTitulo,
        ),
      ),
      body: Container(
        child: CatalogoFilmesWidget(),
      ),
    );
  }
}
