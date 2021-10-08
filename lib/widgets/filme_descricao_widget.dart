import 'dart:ffi';

import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/core/core.dart';
import 'package:catalogo_filmes_app/model/filmes_model.dart';
import 'package:flutter/material.dart';

class FilmeDescricaoWidget extends StatelessWidget {
  const FilmeDescricaoWidget({Key? key, required this.filme}) : super(key: key);
  final FilmesModel filme;

  @override
  Widget build(BuildContext context) {
    print('Aqui: ${filme.titulo}');
    String nomeFilmeCompleto = 'John Wick';
    const String dataLancamento = '06-10-2021';
    const double classificacao = 4.9;
    const String generos = 'Ação, Drama';

    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Descrição',
            style: AppFontes.textoPadraoNegrito,
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  nomeFilmeCompleto,
                  style: AppFontes.textoPadraoNegrito,
                ),
                ListTile(
                  title: Text(
                    'Lançamento',
                    style: AppFontes.textoPadraoNegrito,
                  ),
                  subtitle: Text(
                    dataLancamento,
                    style: AppFontes.textoPadrao,
                  ),
                  trailing: Container(
                    width: 65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.thumb_up_off_alt),
                        Text('4.9'),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Gênero', style: AppFontes.textoPadraoNegrito,),
                  subtitle: Text(generos, style: AppFontes.textoPadrao,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
