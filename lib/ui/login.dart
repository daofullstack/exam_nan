import 'package:examen_flutter/ui/enregistrer.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName="/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Container(
            width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
            Colors.orange[800],
            Colors.orange[600],
            Colors.orange[300]
          ])
        ),
        child:Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:Container(
                margin: EdgeInsets.only(top: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 40,),
        ), Text("Login", style:TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold)),
                ],
            ),)
            ),
             Expanded(
               flex: 7,
              child: SingleChildScrollView(
                              child: Container(
           margin: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height/1.2,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                     color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
                  ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                    height: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                    color:Colors.white,
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 40,
                      offset: Offset(10,22),
                      color: Color.fromRGBO(255, 93, 27, .3),
                    )] ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                       Container(
                      child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                         hintText: "numero ou email",
                         hintStyle: TextStyle(color: Colors.grey)
                      ),

                    )),
                     Container(
                      child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                         hintText: "Mot de passe",
                         hintStyle: TextStyle(color: Colors.grey)
                      ),

                    ),
                    
                    ),
                     InkWell(
                       onTap: (){
                         Navigator.of(context).pushNamed(Enregistrer.routeName);
                       },
                          child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width/3.2,
                          decoration: BoxDecoration(
                          color: Colors.orange[500],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text("login " ,style:TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                     ),
                    ],
                    )
                  ),
                  Text("Continuer avec :"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/3.2,
                        decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      alignment: Alignment.center,
                      child: Text("facebook " ,style:TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/3.2,
                        decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      alignment: Alignment.center,
                      child: Text("google " ,style:TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )
                      ],
                    )
            ),
              ),
             ),
          
      
          ],
        )),
    );
  }
}