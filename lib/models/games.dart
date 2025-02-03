class Game {
  int? id;
  String? name;
  String? image;
  String? release;
  String? ratings;

  Game({this.id,  this.name,  this.image, this.release,  this.ratings});

  factory Game.fromJson(Map<String, dynamic> data){
      return Game(
        id: data['id'],
         name: data['name'],
          image: data['background_image'],
          release: data['released'],
            ratings: data['rating'].toString()
            );
  }
}