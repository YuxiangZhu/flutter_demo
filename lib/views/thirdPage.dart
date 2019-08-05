// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ThirdPageState();
  }

}


class ThirdPageState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(


        title: new Text("界面三"),

      ),

      body: new Center(

        child: new Text("这是第三个界面"),
        

      ),





    );
  }



}