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

  _controlarBusca(BuildContext ctx, bool busca) {
    if (!buscando) {
      return _appBarTitulo = Text('Filmes');
    } else {
      return _appBarTitulo = TextField(
        onChanged: (valor) => () {},
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: 'Buscar...',
          focusColor: Colors.white,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {      
    return Scaffold(
      backgroundColor: AppCores.CorFundo,
      drawer: DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              
            },
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
