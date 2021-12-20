import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slide_drawer/slide_drawer.dart';
String btn1= "Button one";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image-02.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white70.withOpacity(0.8),
                BlendMode.dstATop)
          )
        ),
        child: Column(
          children: [
            Row(
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
                    Text("Shahriar Kawsik",
                      style: TextStyle(color: Colors.white,fontSize: 20,
                          fontWeight: FontWeight.bold),)
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
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    btn1 = "button pressed";
                  });
                },
                child: Text(btn1)
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.orange,
                              width: 2
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4,left: 20,right: 20,bottom: 4),
                        child: Text("Photos",style: TextStyle(color: Colors.white),),
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: width*0.3,
                      width: width*0.3,
                      child: Image.asset("assets/images/image-01.jpg")
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      height: width*0.3,
                      width: width*0.3,
                      child: Image.asset("assets/images/image-02.jpg")
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      height: width*0.3,
                      width: width*0.3,
                      child: Image.asset("assets/images/image-03.jpg")
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      height: width*0.3,
                      width: width*0.3,
                      child: Image.asset("assets/images/image-04.png")
                  ),
                ],
              ),
            )
              ],
            )


        ),
    );

  }
}