import 'package:flutter/material.dart';
import 'dart:async';
import 'package:scrow/model/homeSlider.dart';
import 'package:scrow/myPages/AboutSpeakersPage.dart';
import 'package:scrow/myPages/AgendaPage.dart';
import 'package:scrow/myPages/SponsorPage.dart';
import 'package:scrow/myPages/sliderWidget.dart';

class SliderHome extends StatefulWidget {
  @override
  _SliderHomeState createState() => _SliderHomeState();
}
class _SliderHomeState extends State<SliderHome> {
  int currentPage = 0;
  PageController controller = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer){
      if(currentPage<5){
        currentPage++;
      }
      else{
        currentPage = 0;
      }
      controller.animateToPage(
          currentPage,
          duration: Duration(microseconds: 200),
          curve: Curves.easeInOut);
    });
  }

  pageOnChange(int index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: PageView.builder(
                onPageChanged: pageOnChange,
                controller: controller,
                itemCount: sliderList.length,
                itemBuilder: (BuildContext context, int index){
                  return sliderItems(index);
                }),
          ),


          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("About Our Speakers",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (BuildContext context){
                    return SpeakersScreen();
                  }));
                },
              ),
              FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (BuildContext context){
                      return SponsorsScreen();
                    }));
                  },
                  child: Text("About Our Sponsors",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            ],
          ),
              SizedBox(
                height: 10,
              ),
         Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: FlatButton(
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (BuildContext context){
                      return AgendaScreen();
                    }));
                  },
                  child: Text("Agenda",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),)),
            ),
          ),
          SizedBox(
            height: 40,
          ),



        ],
      ),
    );
  }
}