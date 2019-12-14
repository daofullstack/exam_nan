import 'package:flutter/material.dart';
import '../modele_service/database_helper.dart';

class RestoSqlite extends StatefulWidget {
  static const routeName="/locale";
  @override
  _RestoSqliteState createState() => _RestoSqliteState();
}

class _RestoSqliteState extends State<RestoSqlite> {
  final dbHelper = DatabaseHelper.instance;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("operation Sqlite",style:TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold)),
          leading:          IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 40,),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Padding(
          padding: EdgeInsets.all(5),
          child: Container(
          height: MediaQuery.of(context).size.height/3,
          child: Material(
              
              elevation: 14,
              borderRadius: BorderRadius.circular(50),
              shadowColor: Color(0x802196F3),
              child:Row(
                children: <Widget>[
            Container(
            decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(31)
          ),
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/resto.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("La Térasse"),
                         Container(
                        height: 30,
                        width:30,
                        decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      alignment: Alignment.center,
                      child: Icon(Icons.delete,size: 20,color: Colors.white,)
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 30,
                        width:30,
                        decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      alignment: Alignment.center,
                      child: Icon(Icons.edit,size: 20,color: Colors.white,)
                      ),
                      
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ),
          
        ),
      
        ),
      
      // Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       RaisedButton(
      //         child: Text('insert', style: TextStyle(fontSize: 20),),
      //         onPressed: () {_insert();},
      //       ),
      //       RaisedButton(
      //         child: Text('query', style: TextStyle(fontSize: 20),),
      //         onPressed: () {_query();},
      //       ),
      //       RaisedButton(
      //         child: Text('update', style: TextStyle(fontSize: 20),),
      //         onPressed: () {_update();},
      //       ),
      //       RaisedButton(
      //         child: Text('delete', style: TextStyle(fontSize: 20),),
      //         onPressed: () {_delete();},
      //       ),
      //     ],
      //   ),
        ],
        )
        )
      
    );
  
  }
  //    void _insert() async {
  //   // row to insert
  //   Map<String, dynamic> row = {
  //     DatabaseHelper.columnName : 'Bob',
  //     DatabaseHelper.columnAge  : 23
  //   };
  //   final id = await dbHelper.insert(row);
  //   print('inserted row id: $id');
  // }

  // void _query() async {
  //   final allRows = await dbHelper.queryAllRows();
  //   print('query all rows:');
  //   allRows.forEach((row) => print(row));
  // }

  // void _update() async {
  //   // row to update
  //   Map<String, dynamic> row = {
  //     DatabaseHelper.columnId   : 1,
  //     DatabaseHelper.columnName : 'Mary',
  //     DatabaseHelper.columnAge  : 32
  //   };
  //   final rowsAffected = await dbHelper.update(row);
  //   print('updated $rowsAffected row(s)');
  // }

  // void _delete() async {
  //   // Assuming that the number of rows is the id for the last row.
  //   final id = await dbHelper.queryRowCount();
  //   final rowsDeleted = await dbHelper.delete(id);
  //   print('deleted $rowsDeleted row(s): row $id');
  // }
}