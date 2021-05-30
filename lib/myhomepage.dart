import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/signup.dart';
 class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override
   bool _showPassword = false;

   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: Colors.white,
       body: SafeArea(
         child: Container(padding: EdgeInsets.only(left: 20,right: 20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 SizedBox(height: 50,),
                 Text(" Welcome " ,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                 SizedBox(height: 6,),
                 Text("Sign in to continue",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
               ],
             ),
             Column(
               children: <Widget>[
                 TextField(decoration: InputDecoration(
                   labelText : " Email ID",
                   labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                       color: Colors.grey.shade300,
                     ),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(color: Colors.red,)
                   )
                 ),),
                 SizedBox(height: 14,),
                 TextField(
                   obscureText: !this._showPassword,
                   decoration: InputDecoration(
                     labelText : " Password  ",
                     suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye,color: this._showPassword? Colors.blue:Colors.grey,),
                     onPressed: (){
                       setState(() => this._showPassword=!this._showPassword);
                     },),
                     labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                       borderSide: BorderSide(
                         color: Colors.grey.shade300,
                       ),
                     ),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(color: Colors.red,)
                     )
                 ),),
                 Align(
                   alignment: Alignment.topRight,
                   child: Text("Forgot Password ? ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                 ),
                 SizedBox(height: 30,),
                 Container(height: 50,
                 width: double.infinity,
                 child: FlatButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Signup();
                     }));
                   },
                   child: Ink(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                         gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                       colors: [
                         Color(0xffff4081),
                         Color(0xffff80ab),
                         Color(0xffffc371),
                       ]
                     )),
                     child: Container(
                       alignment: Alignment.center,
                       constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),
                       child: Text(" Login ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                     ),
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(6),
                   ),
                 ),),
                SizedBox(height: 16,),
                 Container(height: 50,
                 width: double.infinity,
                 child: FlatButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                     return Signup();
                   }));

                   } ,
                   color: Colors.indigo.shade50,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(6),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Image.asset("images/facebook.png",height: 30,width:30,),
                       SizedBox(width: 20,),
                       Text(" Connect with Facebook",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),)
                     ],
                   ),
                 ),),
                 SizedBox(height: 30,)
               ],
            ),
             Padding(padding: EdgeInsets.only(bottom: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("I'm a new user,",style: TextStyle(fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Signup();
                     }));
                    },
                    child:Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                  )
                 ],
               ),)

           ],

         ),
         ),
       ),

     );
   }
}