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
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.of(context).pushReplacementNamed(AppRotas.LOGIN, arguments: false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashWidget(
        conteudo: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImagem.Splash),
                SizedBox(
                  height: 30,
                ),
                LinearProgressIndicator(
                  color: Color(0xFF212121),
                  backgroundColor: Color(0xFF9E9E9E),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
