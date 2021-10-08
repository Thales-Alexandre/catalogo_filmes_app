import '../core/core.dart';

const urlBase = 'https://api.themoviedb.org/3';
const apiKey = '405b37fd91727202abc0a9449b530ab6';

class AppUrl{
  static final String urlGenero = urlBase + '/genre/movie/list?api_key=' + apiKey + '&language=pt-BR';
  static final String urlFilmesLancamento = urlBase + '/movie/upcoming?api_key=' + apiKey + '&language=pt-BR&page=1';  
  static final String urlImagem = 'https://image.tmdb.org/t/p/w500';
}