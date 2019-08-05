// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import '../components/MyListView.dart';

class FirstPage extends StatefulWidget{
  @override
  createState() =>new FirstPageState();

}

class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(


        title: new Text("界面一"),

      ),


      body: new Container(

        child: new MyListView(),

      ),

    );
  }



}