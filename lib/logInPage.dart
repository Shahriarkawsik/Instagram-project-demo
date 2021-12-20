import 'package:flutter/material.dart';
import 'package:test_four/home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: width*0.3,
                width: width*0.3,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.deepPurpleAccent,
                      width: 4
                  ),
                  borderRadius: BorderRadius.circular(180),
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_960_720.png")
                  ),
                ),
                //child: Image.asset("assets/images/image-02.jpg",fit: BoxFit.cover),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      prefixIcon: Icon(Icons.people_alt),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Password',
                      hintText: 'Enter Password'
                  ),
                  obscureText: true,
                ),
              ),
              RaisedButton(
                  color: Colors.lightBlue,
                  child: Text("Sign In",
                    style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=>MyHomePage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

