import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/widgets/filme_descricao_widget.dart';
import 'package:catalogo_filmes_app/widgets/filme_sinopse_widget.dart';
import 'package:flutter/material.dart';

class FilmesFormTela extends StatefulWidget {
  const FilmesFormTela({Key? key}) : super(key: key);

  @override
  State<FilmesFormTela> createState() => _FilmesFormTelaState();
}

const String nomeFilme = 'John Wick';

class _FilmesFormTelaState extends State<FilmesFormTela> {
  int _telaSelecionada = 0;
  late List<Map<String, Object>> _telas;

  @override   
  void initState() {
    _telas = [
      {
        'titulo': 'Descrição',
        'tela': FilmeDescricaoWidget(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppCores.CorPrincipal,
        title: Center(
          child: Text(
            nomeFilme,
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
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3A2e7RGIXfcTnX7ZCZ6UNIb24vA.jpg',
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
