import 'dart:io';

import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppInsiderUI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton.extended(
    onPressed: (){
      print("Boosted Successfull !!!!");
    }, 
    label: Text("Boost"),
    icon: Icon(Icons.near_me),
        ),
        backgroundColor: Colors.amber[400],
        body: SingleChildScrollView(
    physics: BouncingScrollPhysics(),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MyAppBar(),
        SizedBox(height:25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("File",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800
                ),
              ),
              IconButton(
                icon: Icon(Icons.tune,
                  size: 30,
                  color: Colors.black,
                ), 
                onPressed: () => print("Settings Button Tapped")
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("Manager",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Text("Let's Clean and Manage your Files",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 240,
          child: ListView(
            physics: BouncingScrollPhysics(), 
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MyCards(mycolor: Color(0xff22293d),mycolor2: Color(0xff434e6c)),
              MyCards(mycolor: Color(0xff3787eb),mycolor2: Color(0xff1b70ba)),
              MyCards(mycolor: Color(0xffff5a00),mycolor2: Color(0xffc84e0c)),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Categories: ",
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),
            )
          ),
        ),
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: EdgeInsets.all(8),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffefefef),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.music_note,
                    color: Color(0xffc4c3ff),
                    size: 30,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Music",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color:Color(0xff576280)
                      )
                    ),
                    Text("233 items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ]
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: EdgeInsets.all(8),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffefefef),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.videocam_outlined,
                    color: Color(0xffff5a00),
                    size: 30,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Videos",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color:Color(0xff576280)
                      )
                    ),
                    Text("154 items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ]
                )
              ],
            ),
          ),
        ),
      ],
    ),
        )
      );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_left,
                size: 40,
              ), 
              onPressed: () => {
                print("Exit Done"),
                exit(0)
              }
            ),
            Container(
              margin: EdgeInsets.only(right: 30, top: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class MyCards extends StatelessWidget {

  final Color mycolor;
  final Color mycolor2;

  MyCards({this.mycolor,this.mycolor2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(25)
        ),
        //height: 200,
        width: 180,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Manager",
                  style: TextStyle(
                    color: Color(0xff434e6c),
                    fontSize: 15
                  ),
                ),
                Icon(Icons.more_horiz,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Large",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text("92",
                  style: TextStyle(
                    color: Color(0xffcfff00),
                    fontSize: 23,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("files",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text("items",
                  style: TextStyle(
                    color: Color(0xff434e6c),
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                  //minHeight: 20,
                  value: 0.7,
                  backgroundColor: Color(0xff434e6c),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00))
                ),
              ),
            ),
            SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("72.40GB / 128GB",
              //textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9
                ),
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 40,
              child: SliderButton(
                action: (){},
                backgroundColor: mycolor2,
                label: Text(">>>",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  height: double.infinity,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  
                  ),
                  child: Align(
                      child: Text("Clean",
                      style: TextStyle(
                        color: mycolor2
                      ),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}