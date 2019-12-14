import 'dart:convert';

import 'package:examen_flutter/ui/liste_resto.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import '../modele_service/modele.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  static const routeName="/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   String url = "http://192.168.50.85:1337/resto";
   String url2="https://jsonplaceholder.typicode.com/photos";
   bool isLoading=true;

    var listeResto=[];
  Future loader() async{
 var response = await get(url2);
var content= response.body;
//  var content= await rootBundle.loadString("assets/data.json");
    Iterable collection=json.decode(content);
    List<Modele> mappertout= collection.map((val)=> Modele.fromJson(val)).toList();
    //var duree=Duration(seconds: 10);
     //Future.delayed(duree);
     return mappertout;
  }

  @override
  void initState() {
    loader();
   //loadjson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("liste Restaurants",style:TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold)),
       actions: <Widget>[
                  IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(RestoSqlite.routeName);
          },
          icon: Icon(Icons.restaurant, color: Colors.white,size: 40,),
        ),
         IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(Login.routeName);
          },
          icon: Icon(Icons.account_circle, color: Colors.white,size: 40,),
        ),
       ],
      ),
      body:FutureBuilder(
        future: loader(),
        builder: (context, snapshot){
          List<Modele> resto=snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting :
            return Container(
              width: 200,
              height: 60,
              child: Text("chargement ..."),
            );
              break;
            default:
              return ListView.builder(
                itemCount: resto.length,
                itemBuilder: (context, index){
                  return  Padding(
          padding: EdgeInsets.all(5),
          child: Container(
          height: MediaQuery.of(context).size.height/4,
          child: Material(
              color: Colors.white70,
              elevation: 14,
              borderRadius: BorderRadius.circular(50),
              shadowColor: Color(0x802196F3),
              child:Row(
                children: <Widget>[
            Container(
            decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(31)
          ), height: 200,
                    width: MediaQuery.of(context).size.width/2.1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/im.jpeg"),
                      ),
                    ),
                  ),
                  Container(
                   width: 80,
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListView(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(resto[index].title),
                          //  Text(resto[index].sigle),
                          //   Text(resto[index].tel.toString()),
                          //    Text(resto[index].type),
                          //     Text(resto[index].commune),
                          //      Text(resto[index].ville),
                
                         
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ),
          
        ),
      
        );
        
                },
          );
          
          
          }
          },
      )
      
    );
  }


}