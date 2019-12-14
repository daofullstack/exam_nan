import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/login.dart';
import 'ui/enregistrer.dart';
import 'ui/liste_resto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurants',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName: (ctx)=> Home(),
        Login.routeName: (ctx)=>Login(),
        Enregistrer.routeName: (ctx)=> Enregistrer(),
        RestoSqlite.routeName:(ctx)=> RestoSqlite(),
      },
    );
  }
}
