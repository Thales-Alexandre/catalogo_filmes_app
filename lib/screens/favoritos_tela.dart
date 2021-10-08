import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:catalogo_filmes_app/widgets/favoritos_widget.dart';
import 'package:flutter/material.dart';

class FavoritosTela extends StatelessWidget {
  const FavoritosTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.CorFundo,
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: AppCores.CorPrincipal,
        title: Center(
          child: Text(
            'Favoritos',
            style: AppFontes.textoPadraoNegrito,
          ),
        ),
      ),
      body: Container(
        child: FavoritosWidget(),
      ),
    );
  }
}
