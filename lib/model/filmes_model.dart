import 'package:catalogo_filmes_app/provider/genero.dart';
import 'package:flutter/cupertino.dart';

class FilmesModel {
  final int codigo;
  final String banner;
  final String titulo;  
  final String tituloOriginal;  
  final String lancamento;
  final double classificacao;
  final List genero;
  final String sinopse;

  FilmesModel({
    required this.codigo,
    required this.banner,
    required this.titulo,
    required this.tituloOriginal,
    required this.lancamento,
    required this.classificacao,
    required this.genero,
    required this.sinopse,
  });
}

class FilmesFavoritosModel {
  final int codigo;
  final String banner;
  final String titulo;  
  final String tituloOriginal;  
  final String lancamento;
  final double classificacao;
  final List genero;
  final String sinopse;

  FilmesFavoritosModel({
    required this.codigo,
    required this.banner,
    required this.titulo,
    required this.tituloOriginal,
    required this.lancamento,
    required this.classificacao,
    required this.genero,
    required this.sinopse,
  });
}
