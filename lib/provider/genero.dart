import 'dart:convert';

import 'package:catalogo_filmes_app/core/app_url.dart';
import 'package:catalogo_filmes_app/model/genero_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Genero with ChangeNotifier {
  List _listaGenero = [];

  get getGenero {
    return [..._listaGenero];
  }

  setGenero() async {
    var retorno;
    var response = await http.get(
      Uri.parse(AppUrl.urlGenero),
    );

    retorno = jsonDecode(response.body);
    await retorno['genres'].forEach(
      (conteudo) {
        _listaGenero.add(
          GeneroModel(
            id: conteudo['id'],
            nome: conteudo['name'],
          ),
        );
      },
    );        
    notifyListeners();    
  }

  limpaListaGenero(){
    _listaGenero.clear();
  }
}
