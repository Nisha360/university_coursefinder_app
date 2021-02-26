// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CourseData.dart';
import 'CourseDetails.dart';
class Courses extends StatefulWidget {

  @override
  _CoursesState createState() => _CoursesState();
}

class _CourseState extends State<Courses> {
  List<Courses> course = getCourses();
  final _formKey = GlobalKey<FormState>();

  var _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Course Details'),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Here.....',
                    border: OutlineInputBorder(),
                    filled: true,
                    errorStyle: TextStyle(fontSize: 15),
                  ),
                  // ignore: missing_return
                  validator: (value) {
                   if(value.isEmpty){
                     return 'Please Enter Something to search';
                   }
                   return null;
                  },
                ),
                SizedBox(height: 10),
                SizedBox(width: double.infinity,
                child:  RawMaterialButton(
                  onPressed: () {
                    final isValid = _formKey.currentState.validate();
                    if (isValid) {

                    } else {
                      setState(() {
                        _autoValidate=true;
                      });
                    }
                  },
                  fillColor:Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child:Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  ),
                ),
                )

              ],
            ),
            ),
            Expanded(child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 32, left: 32, top: 8, bottom: 20),
                child: Text(
                  "Find Your Favourite Course",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5
                  ),
                ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 33, vertical: 17),
                child: Text(
                  'Recommended For you',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                Container(
                  height: 190,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: buildRecommendations(),
                    ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 33),
                child: Column(children: buildLastCourses(),
                ),
                ),
              ],
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> buildRecommendations(){
  List<Widget> list = [];
  list.add(SizedBox(width: 33, ));
  for(var i=0;i< courses.length; i++) {
    list.add(buildRecommendation(courses[i]));
  }
  list.add(SizedBox(width: 16,));
  return list;
}
Widget buildRecommendation(Course course){
  return GestureDetector(
    onTap: () {
      BuildContext context;
      Navigator.push(
        context,
        MaterialPageRoute(builder:  (context) => CourseDetail()),
      );
    },
    child:  Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
          height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage('pic1.png'),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
      ),
              ),
              Container(decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4,),
                  child: Text(
                    'Hey',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "hello everyone",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 24,
                ),
              )
            ],
          ),
          ),
        ],
      ),
    ),
  );
}
Widget buildFilterOption(String text){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8,),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Text(
          //   text,
          //   style: ,
          // ),
        ],
      ),
    ),
  );
}
List<Widget> buildLastCourses(){
  List<Widget> list = [];
  var courses;
  for(var i = courses.length-1;i>-1;i--){
    list.add(buildLastCourse(courses[i]));
  }
  return list;
}
Widget buildLastCourse(Course course){
  return GestureDetector(
    onTap: (){
      BuildContext context;
      Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => CourseDetail())
      );
  },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pic1.png'),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Good Evening",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color:Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          ),
          Text(
            "Good Day",
            style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
  // Text(
  //   "Good Evening",
  //   style: TextStyle(
  // fontSize: 18,
  // ),
  // ),
}





