import '../core/core.dart';

const urlBase = 'https://api.themoviedb.org/3';
const apiKey = '405b37fd91727202abc0a9449b530ab6';
const sessionId = '33bf7c63a5e2595a00a14cc092e6b1dbd829745b';
const accountId = '11222916';

class AppUrl{
  static final String urlGenero = urlBase + '/genre/movie/list?api_key=' + apiKey + '&language=pt-BR';
  static final String urlFilmesLancamento = urlBase + '/movie/upcoming?api_key=' + apiKey + '&language=pt-BR&page=1';  
  static final String urlImagem = 'https://image.tmdb.org/t/p/w500';
  static final String urlFimesFavoritos = urlBase + '/account/' + accountId + '/favorite/movies?api_key=' + apiKey + '&session_id=' + sessionId + '&language=pt-BR&sort_by=created_at.asc&page=1'; 
}