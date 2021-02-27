import 'package:flutter/material.dart';
import 'package:university_coursefinder_app/Screens/profile_screen.dart';
import 'package:university_coursefinder_app/Screens/setting_screen.dart';
import 'package:university_coursefinder_app/Screens/logout_screen.dart';
import 'package:university_coursefinder_app/chatting.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/61OXKrkiy-L._SL1399_.jpg'
                        ),
                        fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text('Pallavi Pattnaik', style: TextStyle(
                      fontSize:22,
                      color: Colors.black,
                      ),
                    ),
                    Text('puravi.874@gmail.com', style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                  ],
                ),

              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Chat',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ChatApp(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingScreen(),
                ));
              },
              ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => LogoutScreen(),
                ));
              },
            ),
          ],
        )
    );
  }
}