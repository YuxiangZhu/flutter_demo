// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import '../components/input.dart';


class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SecondPageState();
  }

}

class SecondPageState extends State<SecondPage>{

  TextEditingController controller;
  String active = "test";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(


        title: new Text("界面二"),

      ),

      body: new Container(

        child: new Column(

          children: <Widget>[

            
            
            new Container(
              
              
              child: new TextField(


                controller: controller,
                onChanged:_onChanged,

              ),
              
              padding: new EdgeInsets.fromLTRB(20, 40, 20, 0)
              
            ),
            
          

            new input(active: active)

          ],

        ),


      )

    );
  }

  void _onChanged(String value) {


    setState(() {
      active = value;

    });




  }



}