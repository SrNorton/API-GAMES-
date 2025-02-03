import 'package:flutter/material.dart';

class FilterGenresTextButtom extends StatefulWidget {
  int? id;
  String? name;
  bool? isPressed = false; 
  VoidCallback? function;
  
  FilterGenresTextButtom({this.id, this.name, this.isPressed, this.function, super.key});

  @override
  State<FilterGenresTextButtom> createState() => _FilterGenresState();
}

class _FilterGenresState extends State<FilterGenresTextButtom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: GestureDetector(
        onTap: widget.function,
        child: Column( 
          children: [ 
            Text(widget.name!,
            style: TextStyle( 
              color: widget.isPressed! ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            ),
            SizedBox(height: 4,),
            Container(
              width: 50,
              height: 8,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(20),
                color: widget.isPressed! ? Colors.white : Colors.grey,
                
              ),
            )
        
          ],
        ),
      ),
    );
  }
}

List<
FilterGenresTextButtom> listGenres = [
  
  FilterGenresTextButtom(id: 00, name: 'Action', isPressed: false, function: () {
    
  },),
  
  FilterGenresTextButtom(id: 01, name: 'Adventure', isPressed: false, function: (){},),
  
  FilterGenresTextButtom(id: 02, name: 'RPG', isPressed: false,function: (){},),
  
  FilterGenresTextButtom(id: 03, name: 'Strategy', isPressed: false,function: (){},),
  
  FilterGenresTextButtom(id: 04, name: 'Sports', isPressed: false,function: (){},)
];