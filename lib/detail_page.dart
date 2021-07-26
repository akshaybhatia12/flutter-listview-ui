import 'model/lesson.dart';
import 'package:flutter/material.dart';



class DetailPage extends StatelessWidget {
  final Lesson lesson;
  //final List<Lesson> lesson;
  const DetailPage({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("drive-steering-wheel.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                padding: EdgeInsets.all(40.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(58, 66, 86, 0.9)
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 120.0),
                      Icon(Icons.directions_car, color: Colors.white, size: 40.0,),
                      Container(
                        width: 90.0,
                        child: Divider(color: Colors.green,),
                      ),
                      SizedBox(height: 10.0,),
                      Text(lesson.title, style: TextStyle(color: Colors.white, fontSize: 45.0),),
                      SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1, child: Container(
                            child: Container(
                              child: LinearProgressIndicator(
                                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                                value: lesson.indicatorValue,
                                valueColor: AlwaysStoppedAnimation(Colors.green),
                              ),
                            ),
                          ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                lesson.level, style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                "\$" + lesson.price.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 8.0,
                  top: 60.0,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.green,),
                  ))
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    lesson.content, style: TextStyle(fontSize: 18.0),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: ()=>{},
                      color: Color.fromRGBO(58, 66, 86, 1.0),
                      child: Text("TAKE THE LESSON", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
