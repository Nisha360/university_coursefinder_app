import 'package:university_coursefinder_app/api/firebase_api.dart';
import 'package:university_coursefinder_app/page/chat_page.dart';
import 'package:university_coursefinder_app/page/chats_page.dart';
import 'package:university_coursefinder_app/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);

  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  static final String title = 'Firebase Chat';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: ChatsPage(),
  );
}