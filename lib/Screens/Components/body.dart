import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:university_coursefinder_app/Screens/DataConnect.dart';
import 'package:university_coursefinder_app/Screens/course.dart';
import 'package:university_coursefinder_app/Screens/Colleges.dart';
import 'package:university_coursefinder_app/Screens/veiw_course.dart';
import 'package:university_coursefinder_app/constants.dart';

import '../ViewData.dart';
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[SearchBox(onChanged: (value) {},
      ),
        MyButtons(),
        MyCard(),
      ],

    );
  }
}

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: kSecondaryColor.withOpacity(0.32)),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/searchBar.svg"),
          hintText: "Search here",
          hintStyle: TextStyle(color: kSecondaryColor),
        ),
      ),

    );
  }
}
class MyButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final MyButtons = "Flat Button";
    return Container(
      // home: Scaffold(
      //   body: Center(
      child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ViewData(),
                ));
              },
              child: Container(
                width: 150.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 20.0),
                      blurRadius: 30.0,
                      color: Colors.black12),
                ], color: Colors.white, borderRadius: BorderRadius.circular(22.0)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 110.0,
                      padding: EdgeInsets.symmetric(vertical: 9.0,horizontal: 9.0),
                      child: Text("University/College", style: Theme.of(context).textTheme.button
                          .apply(color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(98.0),
                              topLeft: Radius.circular(98.0),
                              bottomRight: Radius.circular(200.0)
                          )
                      ),
                    ),
                    Icon(Icons.home,
                      size: 30.0,
                    ),
                  ],
                ),
              ),

            ),
            SizedBox(width: 20),
            InkWell(
              onTap: ()  {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ViewData(),
                ));
              },
              child: Container(
                width: 150.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 20.0),
                      blurRadius: 30.0,
                      color: Colors.black12),
                ], color: Colors.white, borderRadius: BorderRadius.circular(22.0)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 110.0,
                      padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                      child: Text("Courses", style: Theme.of(context).textTheme.button
                          .apply(color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(98.0),
                              topLeft: Radius.circular(98.0),
                              bottomRight: Radius.circular(200.0)
                          )
                      ),
                    ),
                    Icon(Icons.home,
                      size: 30.0,
                    ),
                  ],
                ),
              ),

            ),
          ]
      ),

    );
  }
}

class MyCard extends StatelessWidget {
  Widget build(BuildContext context) {
    
    return Center( 
        /** Card Widget **/
        child: Card( 
          elevation: 50, 
          shadowColor: Colors.black, 
          color: Colors.grey[100], 
          child: SizedBox( 
            width: 300, 
            height: 200, 
            child: Padding( 
              padding: const EdgeInsets.all(20.0), 
              child: Column( 
                children: [ 
                  CircleAvatar( 
                    backgroundColor: Colors.green[500], 
                    radius: 20, 
                    // child: CircleAvatar( 
                    //   backgroundImage: NetworkImage( 
                    //       "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage 
                    //   radius: 100, 
                    // ), //CircleAvatar 
                  ), 
                  //CirclAvatar 
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox 
                  
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox 
                  Text( 
                    "Facing difficulties in selecting the right College and Course?",
                    style: TextStyle( 
                      fontSize: 15, 
                      color: Colors.black, 
                    ), //Textstyle 
                  ), //Text 
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox 
                  SizedBox( 
                    width: 150, 
                    child: RaisedButton( 
                      onPressed: () => null, 
                      color: Colors.deepPurpleAccent, 
                      child: Padding( 
                        padding: const EdgeInsets.all(4.0), 
                        child: Row( 
                          children: [ 
                            Icon(Icons.touch_app), 
                            Text('Get Started'), 
                          ], 
                        ), //Row 
                      ), //Padding 
                    ), //RaisedButton 
                  ) //SizedBox 
                ], 
              ), //Column 
            ), //Padding 
          ), //SizedBox 
        ), //Card 
      );

    }

}






