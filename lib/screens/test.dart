import 'package:consumer_api/home_Page.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('teste'),
      ),
      body: TextButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Myhomepage()));
        }, child: Text('Pesquisar',
        style: TextStyle( 
          fontSize: 30,
          color: Colors.white,
        ),
        ),
    ));
  }
}