import 'package:flutter/material.dart';
import 'model/lesson.dart';
import 'detail_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // is not restarted.
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      home: ListPage(title: 'Lessons'),
    );
  }
}

class ListPage extends StatefulWidget {


  const ListPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //late List lessons;
  late List<Lesson> lessons;
  @override
  void initState() {
    // TODO: implement initState
    lessons = getLessons();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),

      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.list))
        ],
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.home, color: Colors.white,)),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.blur_on, color: Colors.white,)),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.hotel, color: Colors.white,)),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.account_box, color: Colors.white,))
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: lessons.length,
            itemBuilder: (context , index){
            return Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 75, 96, 0.9),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.0, color: Colors.white24),
                      ),
                    ),
                    child: Icon(Icons.autorenew, color: Colors.white,),
                  ),
                  title: Text(lessons[index].title,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    children: [
                      // Icon(Icons.linear_scale, color: Colors.yellowAccent,),
                      // Text(" Intermediate", style: TextStyle(color: Colors.white),)
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(209,224,224,0.2,),
                            value: lessons[index].indicatorValue,
                            valueColor: AlwaysStoppedAnimation(Colors.green),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(lessons[index].level, style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DetailPage(lesson: lessons[index]),));
                  },
                ),
              ),
            );
            }),
      ),
    );
  }
}

List <Lesson> getLessons(){
  return[
    Lesson(
      title: "Introduction to Driving",
      level: "Beginner",
      indicatorValue: 0.33,
      price: 20,
      content: "Start by taking a couple of minutes to read the info , Start by taking a couple of minutes to read the info , Start by taking a couple of minutes to read the info , Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 2",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 2,
        content: "Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 3",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 50,
        content: "Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 4",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content: "Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 5",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content: "Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 6",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content: "Start by taking a couple of minutes to read the info"
    ),
    Lesson(
        title: "Introduction to Driving 7",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content: "Start by taking a couple of minutes to read the info"
    ),
  ];
}



