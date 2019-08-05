import 'package:flutter/material.dart';

class input extends StatelessWidget{

  String active;

  input({Key key, this.active}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(

      children: <Widget>[

        new Container(

          child: new Text("这是一个组件"),
          padding: new EdgeInsets.fromLTRB(0, 100, 0, 20)
          
        ),

        new Container(

          decoration: new BoxDecoration(
              border: new Border.all(width: 1.0, color: Colors.blue)),

          padding: new EdgeInsets.all(15.0),
          child: new Text(active),


        )
        

      ],


    );
  }







}