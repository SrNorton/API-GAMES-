import 'package:consumer_api/components/card_game.dart';
import 'package:consumer_api/components/filter_genres_textbuttom.dart';
import 'package:consumer_api/components/title_genres.dart';
import 'package:consumer_api/manager/api_manager.dart';
import 'package:consumer_api/manager/fetch_games.dart';
import 'package:consumer_api/manager/fetch_games_genres.dart';
import 'package:consumer_api/models/games.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';


class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {

  bool? isPressed = false;

  
  @override
  Widget build(BuildContext context) {

    

    return Scaffold( 
      backgroundColor: Colors.black,
      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Games4Weekend',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listGenres.length,
              itemBuilder: (context, index){
                return FilterGenresTextButtom(
                  id: index,
                  name: listGenres[index].name,
                  isPressed: listGenres[index].isPressed,
                  function: (){
                   setState(() {
                      for (var i = 0; i < listGenres.length; i++) {
                  listGenres[i].isPressed = (i == index);
                }
                   });
                  },
                );
              }),
          ),
         
          GameList(),
          TitleGenres(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: GenresFilter()),
          ),
        ],
      ),
      extendBody: true,
     bottomNavigationBar: CustomNavigationBar(
      isFloating: true,
      borderRadius: Radius.circular(10),
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
       
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          title: Text("Explore"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text("Me"),
        ),
      ],
      currentIndex: 0,
      onTap: (index) {
       
      },
    ),
     );
  }
}

