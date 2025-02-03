import 'package:flutter/material.dart';

class TitleGenres extends StatelessWidget {
  const TitleGenres({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Genres', 
          
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
      ),
    );
  }
}



