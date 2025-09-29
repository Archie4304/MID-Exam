import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme:  ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title:  Text('GRC'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: ClipOval(
                  child: Image.network('https://static.vecteezy.com/system/resources/previews/014/736/578/original/grc-letter-logo-creative-design-with-graphic-grc-simple-and-modern-logo-vector.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: 20),
              Text('GLOBAL RECIPROCAL COLLEGES ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ) ,
              ),

              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 3)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MISSION',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professionals through values-based quality education.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
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
