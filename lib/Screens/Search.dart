import 'package:flutter/material.dart';
import './Data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'profile_screen.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // @override
  // Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
// class Search extends StatelessWidget {
  final TextEditingController serachController = TextEditingController();
  QuerySnapshot snapshotData;
  bool isExecuted = false;
  @override
  Widget build(BuildContext context) {
    Widget searchedData() {
      return ListView.builder(
        itemCount: snapshotData.docs.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Card( 
          elevation: 50, 
          shadowColor: Colors.black, 
          color: Colors.deepPurple[100], 
          child: SizedBox( 
            width: 300, 
            height: 150, 
            child: Padding( 
              padding: const EdgeInsets.all(20.0), 
              child: Column( 
                children: [ 
                 
                  SizedBox( 
                    height: 10, 
                  ),
                  Text(
                          snapshotData.docs[index].data()['name'],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        SizedBox( 
                    height: 10, 
                  ),
                  Text(
                          snapshotData.docs[index].data()['state'],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        
      
                 
                  
                  
                ], 
              ),  
            ), 
          ),  
        ),
            
      
      
          );
           

          
          
          
        },
      );
    }

    return Scaffold(
        appBar: AppBar(
          //  title: Text('College Profile'),
          //   backgroundColor:Colors.white,
          actions: [
            GetBuilder<Data>(
              init: Data(),
              builder: (val) {
                return IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      val.queryData(serachController.text).then((value) {
                        snapshotData = value;
                        setState(() {
                          isExecuted = true;
                        });
                      });
                    });
              },
            )
          ],
          title: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: 'Search Colleges',
                hintStyle: TextStyle(color: Colors.black)),
            controller: serachController,
          ),
          backgroundColor: Colors.white,
        ),
        body: isExecuted
            ? searchedData()
            : Container(
                child: Center(
                    child: Text('Search Colleges',
                        style: TextStyle(color: Colors.black, fontSize: 30.0))),
              ));
  }
}
