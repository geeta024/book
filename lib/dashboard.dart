
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/details.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding( padding: EdgeInsets.only(left: 10),
        child: Column(
          children: <Widget>[
            Expanded(
              flex:1,
              child: Row(
                children: <Widget>[
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  boxShadow: [BoxShadow(offset: Offset(3,3),blurRadius: 10),]),
                  child: CircleAvatar(backgroundImage: AssetImage("images/story8.png"),
                  ),
                  ),
                   Padding(padding: EdgeInsets.only(left: 80)),
                   Text("BOOKS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
                  Padding(
                    padding: const EdgeInsets.only(left: 82.0),
                    child: IconButton(tooltip:'Search',icon: Icon(Icons.search,size: 25,),
                    onPressed: (){},),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: <Widget>[
                  makeItem(image:"images/story8.png"),
                  makeItem(image:"images/story7.png"),
                  makeItem(image:"images/story1.png"),
                  makeItem(image:"images/story2.png"),
                  makeItem(image:"images/story3.png"),
                  makeItem(image:"images/story4.png"),
                  makeItem(image:"images/story5.png"),
                  makeItem(image:"images/story6.png"),

                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Popular",style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),),
                    OutlineButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    borderSide: BorderSide(width: 3,color: Colors.blue.shade300),
                    child: Text("View All",style: TextStyle(color: Colors.blue.shade300),),
                    onPressed: (){},)
                  ],),),
                  Expanded(child: ListView.separated(itemBuilder: (context,index){
                    return listItem(image:"images/story$index.png",tag: " tag$index");
                  }, separatorBuilder: (context,index){
                    return Divider(height: 20, color: Colors.black26,);

                  }, itemCount: 9),)
                ],
              ),
            )
          ],
        ),
       
      ),
    );
  }
  Widget listItem({image,tag}){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Details(image: image,tag: tag,);
        }));
      },
      child: Container(height: 100, width: 400,child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Hero(
          tag: tag,
          child: Container(height: 100,width: 60,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
          bottomRight: Radius.circular(20)),
            boxShadow: [BoxShadow(offset: Offset(5,5),blurRadius: 10),
            ]
          ),),
        ),
        SizedBox(width: 30,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
           Text("Book Title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           SizedBox(height: 5,),
           Text("Author Name", style: TextStyle(color: Colors.black45),),
           SizedBox(height: 5,) ,
            Row(children: <Widget>[Icon(Icons.star,color: Colors.orange.shade700,size: 20,),
            SizedBox(width: 5,),
              Text("4.0",style: TextStyle(color: Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 15),),
            ],)
          ],
        )),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton( icon: Icon(Icons.more_vert),
          onPressed: (){},),
        )
      ],),),
    );
  }
  Widget makeItem({image}){
    return Container(
      width: 330,
      margin: EdgeInsets.only(right: 30,bottom: 40),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
        boxShadow: [BoxShadow(offset: Offset(5,5),blurRadius: 10),]
      ),
      child: Padding(padding: EdgeInsets.only(left: 30,top: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Author name",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 2),),
        SizedBox(height: 10,),
        Text("234 Books",style: TextStyle(color: Colors.white,fontSize: 15,letterSpacing: 1),),
      ],),),
    );
  }
}
