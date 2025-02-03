import 'package:consumer_api/home_Page.dart';
import 'package:flutter/material.dart';

class CardGames extends StatelessWidget {
  VoidCallback? function;
  String? image;
  String? name;
  String? rating;
  String? release;
  
  CardGames({
    this.image,
    this.name,
    this.rating,
    this.release,
    this.function,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Stack(
          children: [
            Container(
            height: 375,
            width: 300,
            child: Image.network(image!,
            fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellowAccent,
                width: 5
              ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          )
          ),
           Positioned(
              top: 8,
              left: 8,
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lançamento: $release',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Nota: $rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
           
        ),
      ),
    );
  }
}