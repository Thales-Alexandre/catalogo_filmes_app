import 'package:catalogo_filmes_app/core/app_imagem.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/splash_widget.dart';
import 'package:flutter/material.dart';

class SplashTela extends StatefulWidget {
  const SplashTela({Key? key}) : super(key: key);

  @override
  State<SplashTela> createState() => _SplashTelaState();
}

class _SplashTelaState extends State<SplashTela> {
  @override
  void initState() {
    super.initState();
    _carregarTelaPrincipal();
  }

  _carregarTelaPrincipal() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.of(context).pushReplacementNamed(AppRotas.HOME, arguments: false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashWidget(
        conteudo: Container(),
      ),
    );
  }
}
