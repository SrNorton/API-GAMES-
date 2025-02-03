class Genres {
  
  String? name;
  String? image;
 

  Genres({  this.name,  this.image, });

  factory Genres.fromJson(Map<String, dynamic> data){
      return Genres(
        
         name: data['name'] ?? 'TEST',
          image: data['image_background'] ?? '',
          
            );
  }
}