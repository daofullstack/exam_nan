import 'package:flutter/material.dart';


class Enregistrer extends StatefulWidget {
  static const routeName="/enregistrer";
  @override
  _EnregistrerState createState() => _EnregistrerState();
}

class _EnregistrerState extends State<Enregistrer> {
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
        ), Text("Enregistrement", style:TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold)),
                ],
            ),)
            ),
             Expanded(
               flex: 7,
              child:  Container(
           margin: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height/1.2,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                     color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
                  ),
                    child: SingleChildScrollView(
                         child: Column(
                           
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                       Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                           hintText: "nom restaurant",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      )),
                        Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.photo_camera),
                           hintText: "photo",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      )),
                       Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.description),
                           hintText: "sigle",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                        Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                           hintText: "telephone",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                        Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.gps_fixed),
                           hintText: "longitude",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                                             Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.gps_fixed),
                           hintText: "latitude",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                       Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                           hintText: "commune",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                                                Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                           hintText: "ville",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                                                Container(
                        child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.group_work),
                           hintText: "type restaurant",
                           hintStyle: TextStyle(color: Colors.grey)
                        ),

                      ),
                      
                      ),
                  InkWell(
                         onTap: (){
                          // Navigator.of(context).pushNamed(Enregistrer.routeName);
                         },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                            height: 40,
                            width: MediaQuery.of(context).size.width/3.2,
                            decoration: BoxDecoration(
                            color: Colors.orange[500],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.center,
                          child: Text("Save " ,style:TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                       ),
                  
                  ],
                      ),
                    )
            ,
                    
                    ),
              
             ),
          
      
          ],
        )),
    );
  }
}