import 'dart:convert';

import 'package:consumer_api/models/games.dart';
import 'package:consumer_api/models/genres.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var apiKey = 'a646923df8b34a188b12e5f0867aa2bb';

class ApiManager extends ChangeNotifier{


Future<List<Game>> getGamesList() async {
  
  try {
     var url = 'https://api.rawg.io/api/games?key=a646923df8b34a188b12e5f0867aa2bb';

   await Future.delayed(const Duration(seconds: 3)); 
  var response = await http.get(
    Uri.parse(url),
   
  );
  if(response.statusCode == 200){
    var data = jsonDecode(response.body);
     List<dynamic> results = data['results']; // Pegando a lista de jogos

      List<Game> gamesList = results.map((game) => Game.fromJson(game)).toList();

    
    print('retorno da requisicao ${response.body}');
     print("Lista de jogos carregada: ${gamesList.length}");
      return gamesList;

    
  } else {
    throw Exception('Falha ao ler os jogos ${response.statusCode}');
  }

}

  catch (e) {
    return Future.error(e);
  }
}

Future<List<Genres>> getGenresList() async {
  
  try {
     var url = 'https://api.rawg.io/api/genres?key=a646923df8b34a188b12e5f0867aa2bb';

   await Future.delayed(const Duration(seconds: 6)); 
  var response = await http.get(
    Uri.parse(url),
   
  );
  if(response.statusCode == 200){
    var data = jsonDecode(response.body);
     List<dynamic> results = data['results']; // Pegando a lista de jogos

      List<Genres> gamesList = results.map((game) => Genres.fromJson(game)).toList();

    
    print('retorno da requisicao ${response.body}');
     print("Lista generos carregada: ${gamesList.length}");
      return gamesList;

    
  } else {
    throw Exception('Falha ao ler os generos ${response.statusCode}');
  }

}

  catch (e) {
    return Future.error(e);
  }
}

}
