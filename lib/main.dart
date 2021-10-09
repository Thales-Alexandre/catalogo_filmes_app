import 'package:catalogo_filmes_app/provider/filmes.dart';
import 'package:catalogo_filmes_app/provider/genero.dart';
import 'package:catalogo_filmes_app/screens/catalogofilmes_tela.dart';
import 'package:catalogo_filmes_app/screens/favoritos_tela.dart';
import 'package:catalogo_filmes_app/screens/filmes_form_tela.dart';
import 'package:catalogo_filmes_app/screens/genero_tela.dart';
import 'package:catalogo_filmes_app/screens/login_tela.dart';
import 'package:catalogo_filmes_app/screens/splash_tela.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new CatalogoFilmesApp());
}

class CatalogoFilmesApp extends StatelessWidget {
  const CatalogoFilmesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Genero(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Filmes(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.baiJamjuree(fontSize: 18).fontFamily,
        ),
        home: SplashTela(),//LoginTela(),
        routes: {
          AppRotas.HOME: (ctx) => CatalogoFilmesTela(),
          AppRotas.FAVORITOS: (ctx) => FavoritosTela(),
          AppRotas.FILME_FORM: (ctx) => FilmesFormTela(),
          AppRotas.GENERO: (ctx) => GeneroTela(),
          AppRotas.LOGIN: (ctx) => LoginTela(),
        },
      ),
    );
  }
}
