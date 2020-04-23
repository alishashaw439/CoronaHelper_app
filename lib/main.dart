import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'testing_corona.dart';
import 'sanitizer.dart';

import 'package:url_launcher/url_launcher.dart';
import 'registration_form.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  String LaunchURl='https://covid.apollo247.com';
  Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(url,
        forceSafariVC: false,
        forceWebView: false,

      );
    }
    else{
      throw 'could not launch $url';
    }
  }

  @override


  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Color(0xFFF1CCD7),
        appBar: AppBar(
          backgroundColor: Color(0xFF8A3593),
          title: new Center(child:Text('Help Covid-19',
            textAlign:TextAlign.center,)),
        ),

        body:Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[


            Container(
              margin: EdgeInsets.all(12.0),
              width:500,
              height:100,
              child:RaisedButton(

                  color:Color(0xFFDA85E2),
                  child:Text('Make Sanitizer'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sanitizer()),

                    );
                  }
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              width:500,
              height:100,
              child:RaisedButton(

                  color:Color(0xFFDA85E2),
                  child:Text('Register to receive Ration'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()),

                    );
                  }
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              width:500,
              height:100,
              child: RaisedButton(

                  color:Color(0xFFDA85E2),
                  child:Text('Test for Corona'),
                  onPressed: () {
                    _launchInBrowser(LaunchURl);
                  }
              ),

            ),


          ],

        )

    );

  }
}
