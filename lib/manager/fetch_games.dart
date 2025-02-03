import 'package:consumer_api/components/card_game.dart';
import 'package:consumer_api/manager/api_manager.dart';
import 'package:consumer_api/models/games.dart';
import 'package:flutter/material.dart';

class GameList extends StatefulWidget {
  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  late Future<List<Game>> futureGames;

  @override
  void initState() {
    super.initState();
    futureGames = ApiManager().getGamesList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Game>>(
      future: futureGames,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(
            color: Colors.white,
          ));
        } else if (snapshot.hasError) {
          return Center(child: Text('Erro: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('Nenhum jogo encontrado.'));
        } else {
          List<Game> games = snapshot.data!;
          return Container(
            height: 380,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              
              itemCount: games.length,
              itemBuilder: (context, index) {
                Game game = games[index];
                return CardGames(
                  image: game.image,
                  name: game.name,
                  rating: game.ratings,
                  release: game.release,
                );
              },
            ),
          );
        }
      },
    );
  }
}