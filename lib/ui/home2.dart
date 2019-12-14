// import 'dart:convert';

// import 'package:examen_flutter/ui/liste_resto.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'login.dart';
// import '../modele_service/modele.dart';
// import 'package:http/http.dart' as http;
// import '../modele_service/database_helper.dart';

// class Home extends StatefulWidget {
//   static const routeName="/home";
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//    String url = "http://192.168.50.85:1337/resto";

//   // Await the http get response, then decode the json-formatted responce.
//   // var response = await http.get(url);
//   // if (response.statusCode == 200) {
//   //   var jsonResponse = convert.jsonDecode(response.body);
//   //   var itemCount = jsonResponse['totalItems'];
//   //   print("Number of books about http: $itemCount.");
//   // } else {
//   //   print("Request failed with status: ${response.statusCode}.");
//   // }
//     var listeResto=[];
//   Future loadjson() async{
//     //http.Response response = await http.get(url);
//     //var content= response.body;
//     var content = await rootBundle.loadString("assets/data.json");
//     List collection=json.decode(content);
//     List<Modele> mappertout= collection.map((val)=> Modele.fromJson(val)).toList();

//     setState(() {
//      listeResto=mappertout; 
//      //return listeResto;
//     });
    
//   }

//   @override
//   void initState() {
//    loadjson();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           title: Text("liste Restaurants",style:TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold)),
//        actions: <Widget>[
//                   IconButton(
//           onPressed: (){
//             Navigator.of(context).pushNamed(RestoSqlite.routeName);
//           },
//           icon: Icon(Icons.restaurant, color: Colors.white,size: 40,),
//         ),
//          IconButton(
//           onPressed: (){
//             Navigator.of(context).pushNamed(Login.routeName);
//           },
//           icon: Icon(Icons.account_circle, color: Colors.white,size: 40,),
//         ),
//        ],
//       ),
//       body: SingleChildScrollView(
//         child:Column(
//           children: <Widget>[
          
//             Padding(
//           padding: EdgeInsets.all(5),
//           child: Container(
//           height: MediaQuery.of(context).size.height/3,
//           child: Material(
//               //color: Colors.white,
//               elevation: 14,
//               borderRadius: BorderRadius.circular(50),
//               shadowColor: Color(0x802196F3),
//               child:Row(
//                 children: <Widget>[
//             Container(
//             decoration: BoxDecoration(
//             color: Colors.orangeAccent,
//             borderRadius: BorderRadius.circular(31)
//           ),
//                     width: 180,
//                     height: 200,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(24),
//                       child: Image(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/images/im.jpeg"),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(listeResto[0].name),
//                           Text(listeResto[0].name),
                         
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ) ,
//             ),
          
//         ),
      
//         ),
//         Padding(
//           padding: EdgeInsets.all(5),
//           child: Container(
//           height: MediaQuery.of(context).size.height/3,
//           child: Material(
//               //color: Colors.white,
//               elevation: 14,
//               borderRadius: BorderRadius.circular(50),
//               shadowColor: Color(0x802196F3),
//               child:Row(
//                 children: <Widget>[
//             Container(
//             decoration: BoxDecoration(
//             color: Colors.orangeAccent,
//             borderRadius: BorderRadius.circular(31)
//           ),
//                     width: 180,
//                     height: 200,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(24),
//                       child: Image(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/images/resto.jpg"),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Column(
//                         children: <Widget>[
//                           Text(listeResto[1].name),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ) ,
//             ),
          
//         ),
      
//         ),
//                             ],
//         )
//         )
      
//     );
//   }


// }

// /*
// ListView.builder(
//           itemCount:listeResto.length ,
//           itemBuilder: (contexxt, index){
//             return Padding(
//           padding: EdgeInsets.all(5),
//           child: Container(
//           height: MediaQuery.of(context).size.height/3,
//           child: Material(
//               //color: Colors.white,
//               elevation: 14,
//               borderRadius: BorderRadius.circular(50),
//               shadowColor: Color(0x802196F3),
//               child:Row(
//                 children: <Widget>[
//             Container(
//             decoration: BoxDecoration(
//             color: Colors.orangeAccent,
//             borderRadius: BorderRadius.circular(31)
//           ),
//                     width: 180,
//                     height: 200,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(24),
//                       child: Image(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/images/resto.jpg"),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Column(
//                         children: <Widget>[
//                           Text(listeResto[0].name),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ) ,
//             ),
          
//         ),
      
//         );

        
          
          
//           },
//         )
      
// */

// /*

// FutureBuilder(
//           future:loadjson() ,
//           builder: (context, snap){
//             if (snap.connectionState== ConnectionState.none) {
//               print('project snapshot data is: ${snap.data}');
//               return Center(child: Container(height: 50,width: 50,child: CircleAvatar(),),);
              
//             } else {
//               return ListView.builder(
//                 itemCount: snap.data.length,
//                 itemBuilder: (context, index){
//                   return Padding(
//           padding: EdgeInsets.all(5),
//           child: Container(
//           height: MediaQuery.of(context).size.height/3,
//           child: Material(
//               //color: Colors.white,
//               elevation: 14,
//               borderRadius: BorderRadius.circular(50),
//               shadowColor: Color(0x802196F3),
//               child:Row(
//                 children: <Widget>[
//             Container(
//             decoration: BoxDecoration(
//             color: Colors.orangeAccent,
//             borderRadius: BorderRadius.circular(31)
//           ),
//                     width: 180,
//                     height: 200,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(24),
//                       child: Image(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/images/resto.jpg"),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Column(
//                         children: <Widget>[
//                           Text(snap.data[index].name),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ) ,
//             ),
          
//         ),
      
//         );
//                 },
//               );
//             }
//           },
//         )




//  */