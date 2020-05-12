import 'package:flutter/material.dart';
import 'package:scrow/myPages/sliderHome.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title: Text('Dictionary App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(
                    "asset/images/welcome.jpg"
                  ))
                ),
                child: Center(
                  child: Text('''
                  Welcome to
                  TachTalk
                  2020''',
                  textAlign: TextAlign.center,),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: FlatButton(
                color: Colors.cyan,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                      (context){
                        return SliderHome();
                      }));
                  },
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text("Tap here to get Started",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "CaviarDreams_Bold"
                      ),),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}