// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import './views/firstPage.dart';
import './views/secondPage.dart';
import './views/thirdPage.dart';

void main() => runApp(new MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      theme: new ThemeData.light(),

      home: new RandomWords(),

    );
  }



}

class RandomWords extends StatefulWidget {
  @override
  createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<RandomWords> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(




      body: new TabBarView(

        controller: controller,
        children: <Widget>[
          new FirstPage(),
          new SecondPage(),
          new ThirdPage(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.lightBlue,
        child: new TabBar(

          controller: controller,

            tabs: <Tab>[
              new Tab(text: "列表",icon:new Icon(Icons.home)),
              new Tab(text: "通知",icon: new Icon(Icons.message)),
              new Tab(text: "我的",icon: new Icon(Icons.cloud)),




        ]),

      ),



    );
  }




}

