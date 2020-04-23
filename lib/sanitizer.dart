import 'package:flutter/material.dart';

class Sanitizer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green),
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFF1CCD7),
      appBar: AppBar(
        backgroundColor: Color(0xFF8A3593),
        title: Center(child: Text('Homemade Sanitizer')),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              //AIzaSyDDllzVhLR0Ku9c0Wa6EZC0DnoWFE1_59k
              Container(

                child:Text('what you will need',style:TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,

                )

                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Row(
                    children: <Widget>[

                      Flexible(
                        child: Container(
                          //padding: EdgeInsets.all(30.0),
                            child: Chip(
                              label: Expanded(
                                flex :1,
                                child: Text('3/4 cup of isopropyl or rubbing alcohol (99 percent)',style:TextStyle(
                                  color:Colors.white,
                                ),

                                ),
                              ),

                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(50.0),

                      ),
                      Flexible(
                        child: Container(
                          //padding: EdgeInsets.all(30.0),
                            child: Chip(
                              label: Expanded(
                                flex:4,
                                child: Text('1/4 cup of aloe vera gel',
                                    style:TextStyle(
                                      color:Colors.white,
                                    )),
                              ),
                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Flexible(

                    child: Row(
                      children: <Widget>[

                        Container(
                            width: 350,
                            height:60,

                            child: Chip(

                              label: Text('10 drops of essential oil, such as lavender oil,or you can use lemon juice instead',
                                style:TextStyle(
                                  color:Colors.white,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 5,),
                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                child:Text('Directions',style:TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,


                )

                ),
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Flexible(

                    child: Row(
                      children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//
//                    ),
                        Container(
                            width: 350,
                            height:60,
                            //padding: EdgeInsets.all(30.0),
                            child: Chip(

                              label: Text('Pour all ingredients into a bowl, ideally one with a pouring spout like a glass measuring container',
                                style:TextStyle(
                                  color:Colors.white,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 5,),
                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Flexible(

                    child: Row(
                      children: <Widget>[

                        Container(
                            width: 350,
                            height:60,

                            child: Chip(

                              label: Text('Mix with a spoon and then beat with a whisk to turn the sanitizer into a gel',
                                style:TextStyle(
                                  color:Colors.white,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 5,),
                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                child: Card(
                  color: Color(0xFFDA85E2),
                  elevation: 10,
                  child: Flexible(

                    child: Row(
                      children: <Widget>[

                        Container(
                            width: 350,
                            height:60,

                            child: Chip(

                              label: Text('Pour the ingredients into an empty bottle for easy use, and label it “hand sanitizer"',
                                style:TextStyle(
                                  color:Colors.white,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 5,),
                              shadowColor: Color(0xFFDA85E2),
                              backgroundColor: Color(0xFFB72FAA),
                              elevation: 10,
                              autofocus: true,
                            )),

                      ],
                    ),
                  ),
                ),
              ),

            ]
        ),
      ),
    );
  }
}


