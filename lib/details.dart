import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/myhomepage.dart';
class Details extends StatefulWidget {
  final String image;
  final String tag;
  const Details ({ Key key, this.image,this.tag}): super(key: key);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          flexibleSpace: Hero(tag:widget.tag,
            child:Container(height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover)
            ),) ,
          ),
          actions: <Widget>[
            IconButton( icon: Icon(Icons.more_vert,color: Colors.white,),
            onPressed: (){},)
          ],
        ),
      ),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Book Title ",style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),),
            OutlineButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              borderSide: BorderSide(width: 3,color: Colors.blue.shade300),
              child: Text("View All",style: TextStyle(color: Colors.blue.shade300),),
            onPressed: (){},
            ),
          ],),
          Text("Author name",style: TextStyle(color: Colors.black54,),),
          SizedBox(height: 5,),
          Row(
            children: <Widget>[
              Icon(Icons.star,color: Colors.orange.shade700,size: 20,),
              Icon(Icons.star,color: Colors.orange.shade700,size: 20,),
              Icon(Icons.star,color: Colors.orange.shade700,size: 20,),
              Icon(Icons.star,color: Colors.orange.shade700,size: 20,),
              Icon(Icons.star,color: Colors.grey,size: 20,),
              SizedBox(width: 5,),
              Text("4.0",style: TextStyle(color: Colors.orange.shade700,
              fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 5,),
              Text("(2460)",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 20,),
          Divider(thickness: 1.5,),
          Padding(padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: <Widget>[
              Icon(Icons.favorite,color: Colors.red,),
              SizedBox(width: 10,),
              Text("22",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text("Likes",style: TextStyle(fontSize: 15,color: Colors.black54),),
              SizedBox(width: 30,),
              Icon(Icons.message),
              SizedBox(width: 10,),
              Text("14",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text("Comments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
              SizedBox(width: 15,),
              Icon(Icons.share),
              Text("share" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
           ],
          ),
          ),
          Divider(thickness: 1.5,),
          SizedBox(height: 10,),
          Text("About the book",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black87),),
          SizedBox(height: 10,),
          Text("The Tell-Tale Heart is a short story by American writer Edgar Allan Poe, first published in 1843. It is related by an unnamed narrator who endeavors to convince the reader of the narrator's sanity while simultaneously describing a murder the narrator committed. The victim was an old man with a filmy pale blue , as the narrator calls it. The narrator emphasizes the careful calculation of the murder, attempting the perfect crime, complete with dismembering the body in the bathtub and hiding it under the floorboards. Ultimately, the narrator's actions result in hearing a thumping sound, which the narrator interprets as the dead man's beating heart."
         ,style: TextStyle(color: Colors.grey,height: 1.5), ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            createButton( icon: Icon(Icons.book),color: Colors.blue, text: "READ NOW",),
            createButton( icon: Icon(Icons.login),color: Colors.pink, text: "Sign In",),
          ],)
        ],),),),
    );
  }
  Widget createButton({icon, color,text}){
  return ButtonTheme(
    minWidth :160,
      height:  45,
    child :FlatButton.icon(onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context){
       return MyHomePage();
     }));
     },
        icon: icon,
        label: Text(text,style: TextStyle(color: Colors.white),),
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),);
}}