import 'dart:convert';
import 'dart:ffi';

import 'package:catalogo_filmes_app/core/app_url.dart';
import 'package:catalogo_filmes_app/model/filmes_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Filmes with ChangeNotifier {
  List _listaFilmes = [];

  get getFilmes {
    return [..._listaFilmes];
  }

  setFilmes() async {
    var retorno;
    var response = await http.get(
      Uri.parse(AppUrl.urlFilmesLancamento),
    );

    retorno = jsonDecode(response.body);

    await retorno['results'].forEach(
      (conteudo) {
        _listaFilmes.add(
          FilmesModel(
            codigo: conteudo['id'],
            banner: conteudo['poster_path'],
            titulo: conteudo['title'],
            tituloOriginal: conteudo['original_title'],
            lancamento: conteudo['release_date'],
            classificacao: double.parse(conteudo['vote_average'].toString()),
            genero: conteudo['genre_ids'],
            sinopse: conteudo['overview'],
          ),
        );        
      },      
    );  
    notifyListeners();  
  }

  limpaListaFilmes() {
    _listaFilmes.clear();
  }
}
