import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Home Screen",
          style: TextStyle(color: Colors.white,
              fontSize: 30, fontWeight:
              FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: width*0.2,
                          width: width*0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_960_720.png"),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(color: Colors.lime,width: 4),
                            borderRadius: BorderRadius.circular(360),

                          ),

                        ),
                        Text("Shahriar Kawsik",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              Column(
                                children: [
                                  Text("2005k",style: TextStyle(fontSize: 20),),
                                  Text("Following")
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("2005k",style: TextStyle(fontSize: 20),),
                                  Text("Following")
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("2005k",style: TextStyle(fontSize: 20),),
                                  Text("Following")
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,left: 40,right: 40,bottom: 4),
                                    child: Text("Message",style: TextStyle(fontSize: 20),),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey,
                                          width: 1
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,left: 5,right: 5,bottom: 4),
                                    child: Icon(Icons.account_circle_rounded),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey,
                                          width: 1
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,left: 5,right: 5,bottom: 4),
                                    child: DropdownButton(
                                      items: [],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                      ],
                    ),
              )
                ],
              ),
        )


        ),
    );

  }
}