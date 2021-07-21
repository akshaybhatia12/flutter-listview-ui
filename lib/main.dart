import 'package:flutter/material.dart';

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
            itemCount: 10,
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
                  title: Text("Introduction to Driving",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.linear_scale, color: Colors.yellowAccent,),
                      Text(" Intermediate", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                ),
              ),
            );
            }),
      ),
    );
  }
}



