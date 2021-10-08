import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/provider/genero.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:catalogo_filmes_app/widgets/genero_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeneroTela extends StatelessWidget {
  const GeneroTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {    

    return Scaffold(
      backgroundColor: AppCores.CorFundo,
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: AppCores.CorPrincipal,
        title: Center(
          child: Text(
            'Gênero',
            style: AppFontes.textoPadraoNegrito,
          ),
        ),
      ),
      body: GeneroWidget(),
    );
  }
}
