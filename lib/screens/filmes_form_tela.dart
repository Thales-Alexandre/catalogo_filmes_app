import 'dart:math';

import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/core/app_url.dart';
import 'package:catalogo_filmes_app/model/filmes_model.dart';
import 'package:catalogo_filmes_app/provider/filmes.dart';
import 'package:catalogo_filmes_app/widgets/filme_descricao_widget.dart';
import 'package:catalogo_filmes_app/widgets/filme_sinopse_widget.dart';
import 'package:flutter/material.dart';

class FilmesFormTela extends StatefulWidget {
  const FilmesFormTela({Key? key}) : super(key: key);

  @override
  State<FilmesFormTela> createState() => _FilmesFormTelaState();
}

class _FilmesFormTelaState extends State<FilmesFormTela> {
  int _telaSelecionada = 0;
  late List<Map<String, Object>> _telas;

  @override
  FilmesModel _filmeSelecionado = FilmesModel(
    codigo: 0,
    banner: '',
    titulo: '',
    tituloOriginal: '',
    lancamento: '',
    classificacao: 0,
    genero: [],
    sinopse: '',
  );

  void initState() {
    _telas = [
      {
        'titulo': 'Descrição',
        'tela': FilmeDescricaoWidget(filme: _filmeSelecionado),
      },
      {
        'titulo': 'Sinopse',
        'tela': FilmeSinopseWidget(),
      },
    ];
    super.initState();
  }

  _mudarTela(int indice) {
    setState(() {
      _telaSelecionada = indice;
    });
  }
  /*
  _dadosFilme(FilmesModel filme) async {
    setState(() {
      _filmeSelecionado = filme;
      print('Primeiro: ${filme.titulo}');
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    FilmesModel filme =
        ModalRoute.of(context)!.settings.arguments as FilmesModel;
    //_dadosFilme(filme);
    _filmeSelecionado = filme;    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppCores.CorPrincipal,
        title: Center(
          child: Text(
            filme.titulo,
            style: AppFontes.textoPadraoNegrito,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppCores.CorFundo,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    (AppUrl.urlImagem + filme.banner),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                    child: _telas[_telaSelecionada]['tela'] as Widget),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          onTap: _mudarTela,
          currentIndex: _telaSelecionada,
          backgroundColor: AppCores.CorPrincipal,
          selectedItemColor: Colors.white,
          unselectedItemColor: AppCores.CorFundo,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'Descrição',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_outlined),
              label: 'Sinopse',
            ),
          ],
        ),
      ),
    );
  }
}
