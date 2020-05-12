import 'package:flutter/material.dart';
import 'package:scrow/model/SpeakerModel.dart';
import 'package:scrow/myPages/profileDetailPage.dart';

class SpeakersScreen extends StatefulWidget {
  final int index;

  const SpeakersScreen({Key key, this.index}) : super(key: key);
  @override
  _SpeakersScreenState createState() => _SpeakersScreenState();
}

class _SpeakersScreenState extends State<SpeakersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).pop();
            }),
        title: Text('Know about our Speakers',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: ListView.builder(
        itemCount: modelListHorizontal.length,
            itemBuilder: (context, index){
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 280,
                                width: 300,
                                decoration: BoxDecoration(
                                  //color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(
                                        modelListHorizontal[index].imagePath
                                    ), fit:  BoxFit.cover)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        left: 200,
                        top: 110,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  child: Row(
                                    children: <Widget>[
                                      Text( modelListHorizontal[index].firstName,
                                        style: TextStyle(
                                          //fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text( modelListHorizontal[index].lastName,
                                        style: TextStyle(
                                          // fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 150,
                                  child: Text( modelListHorizontal[index].topic,
                                    style: TextStyle(
                                      fontFamily: "CaviarDreams_Bold",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ),

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(profileDetailPage.routeName,
              arguments: {
                "firstName": modelListHorizontal[index].firstName,
                "lastName": modelListHorizontal[index].lastName,
                "profession": modelListHorizontal[index].profession,
                "company": modelListHorizontal[index].company,
                "position": modelListHorizontal[index].position,
                "imagePath": modelListHorizontal[index].imagePath,
                "duration": modelListHorizontal[index].duration,
                "profile": modelListHorizontal[index].profile,
                "topic": modelListHorizontal[index].topic,
              }
              );
            },
          );
            },
        ),
    );
  }
}
