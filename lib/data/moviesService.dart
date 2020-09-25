import 'package:criticine/data/moviesEntity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

List<MovieEntity> parseMovies(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<MovieEntity>((json) => MovieEntity.fromJson(json)).toList();
}

//Método Get para puxar os dados da url sobre os filmes.
Future<List<MovieEntity>> fetchMovies(http.Client client) async {
  final response = await http
      .get('https://desafio-mobile.nyc3.digitaloceanspaces.com/movies');

  if (response.statusCode == 200) {
    // Se receber 200 então ele converte.
    return parseMovies(response.body);
  } else {
    // ignore: todo
    // TODO tratamento de erro.
    throw Exception('Failed to load movies');
  }
}
