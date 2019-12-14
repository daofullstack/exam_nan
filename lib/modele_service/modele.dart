class Modele {
  final String title;
  // final int id;
  // final String name;
  // final  String photo;
  // final  String commune;
  // final  String ville;
  // final  String type;
  //  final  String sigle;
  //     var tel;
  //    final double logitude;
  //    final double  latitude;

 // Modele(this.title,this.id, this.name, this.photo, this.commune, this.ville, this.type, this.sigle, this.tel, this.logitude, this.latitude);
   Modele(this.title);

  Modele.fromJson(Map<String, dynamic> json):
  title=json["title"]
  // id=json["id"],
  // name=json['name'],
  //       sigle=json['cigle'],
  //     tel=json['tel'],
  //     photo=json['photo'],
  //  commune=json['address']["commune"],
  //   ville=json['address']['ville'],
  //    type=json['type']["name"],

  //     logitude=json["address"]["logitude"],
  //     latitude=json["address"]["latitude"]
     ;
  
  }
