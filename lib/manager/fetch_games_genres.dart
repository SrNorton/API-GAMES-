import 'package:consumer_api/manager/api_manager.dart';
import 'package:consumer_api/models/genres.dart';
import 'package:flutter/material.dart';

class GenresFilter extends StatefulWidget {
  @override
  _GenresFilterState createState() => _GenresFilterState();
}

class _GenresFilterState extends State<GenresFilter> {
  late Future<List<Genres>> futureGames;

  @override
  void initState() {
    super.initState();
    futureGames = ApiManager().getGenresList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Genres>>(
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
          List<Genres> games = snapshot.data!;
          return ListView.builder(
            scrollDirection: Axis.vertical,
            
            itemCount: games.length,
            itemBuilder: (context, index) {
              Genres game = games[index];
              return Expanded(
                child: ListTile(
                  leading: Image.network(game.image!),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      game.name!,
                      style: TextStyle( 
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}