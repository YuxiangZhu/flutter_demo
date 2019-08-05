import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import '../views/Detail.dart';

class MyListView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListState();
  }

}


class ListState extends State<MyListView>{

  List data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(


      itemCount: data==null ? 0 : data.length,
        itemBuilder: (BuildContext context,int index){

          return new Card(

            child: new ListTile(

              subtitle: new Container(

                child: new Column(
                  children: <Widget>[

                    new Row(

                      children: <Widget>[

                        new Expanded(
                            child: new Text(data[index]["title"],style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16)))
                      ],

                    ),

                    new Row(

                      children: <Widget>[
                        new Row(

//                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: <Widget>[

                            new Text("时间:"),
                            new Text("2019-10-20")

                          ],


                        )

                      ],


                    ),


                    new Row(

                      children: <Widget>[
                        new Container(

                          padding:const EdgeInsets.fromLTRB(0, 5, 0, 2),

                          child: new Text("id:" + data[index]["id"].toString()),

                        )

                      ],



                    )


                  ],

                ),



              ),


              trailing: new Icon(Icons.keyboard_arrow_right,color: Colors.grey),
              onTap: () => _onTap(data[index]["id"].toString())



            ),


          );




        },


    );
  }


  getData()async{

    var url = "http://jsonplaceholder.typicode.com/posts";
    var httpClient = new HttpClient();
    var result;


    try{

      var requst = await httpClient.getUrl(Uri.parse(url));
      var response = await requst.close();

      if(response.statusCode==HttpStatus.ok){

        var json = await response.transform(utf8.decoder).join();

        result = jsonDecode(json);


      }else{
        result = "error getting json data:\n http status ${response.statusCode}";

      }
    }catch(ex){

      result = "fail getting json data";

    }

    if(!mounted) return;

    setState(() {
      data = result;
    });



  }

  void _onTap(String id) {
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new Detail(id);
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return new FadeTransition(
            opacity: animation,
            child: new SlideTransition(
                position: new Tween(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation),
                child: child),
          );
        }


        ));
  }


}