import 'package:flutter/material.dart';
import './SplashScreen.dart';
class WelcomeSrc extends StatefulWidget {
  @override
  _WelcomeSrcState createState() => _WelcomeSrcState();
}

class _WelcomeSrcState extends State<WelcomeSrc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column( children: <Widget>[
          SizedBox(height: 45.0),
          Container(
            height:300,
            child: Image(image: AssetImage('assets/images/stud.jpg'),
            fit: BoxFit.contain,
            )
          ),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              text: 'Welcome to', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,
              color:Colors.deepOrange[600]
              ),
              children: <TextSpan> [
                TextSpan(
                  text: ' UNICOUR', style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent)
                )
              ]

            )
          ),
          SizedBox(height:10.0),

          Text('Sign In as: ',style:TextStyle(color:Colors.black,fontSize:17,)),
           SizedBox(height: 30.0),

          Row( mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              RaisedButton(
                 padding: EdgeInsets.only(left:30,right:30),


                onPressed: (){
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ));
              },
                child: Text('Student', style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                 ),),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   
                   ),
                   color: Colors.blue
              ),

              SizedBox(width:20.0),

              RaisedButton(
                padding: EdgeInsets.only(left:30,right:30),

                 onPressed: (){
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ));
              },
                child: Text('College', style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                 ),),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   
                   ),
                   color: Colors.green
              ),
              
            ],
          ),
          SizedBox(height: 20.0),

             
        ],)
      )
      
    );
  }
}