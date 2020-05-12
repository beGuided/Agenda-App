import 'package:flutter/material.dart';
import 'package:scrow/model/SpeakerModel.dart';
import 'package:scrow/model/agendaModel.dart';
import 'package:scrow/myPages/agendaDetails.dart';
import 'package:scrow/myPages/profileDetailPage.dart';



class AgendaScreen extends StatelessWidget {
  final int index;
  const AgendaScreen({Key key, this.index}) : super(key: key);
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
        title: Text('Agenda',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: GestureDetector(
        onTap: (){

        },
        child: ListView.builder(
            itemCount: modelListDetailItems.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("SPEAKING FOR: "),
                                    Text("${modelListDetailItems[index].duration}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: AssetImage(
                                          modelListDetail[index].imagePath
                                      ), fit: BoxFit.cover)
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Topic:"),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 250,
                                  child: Text(modelListDetailItems[index].topic,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),),
                                )
                              ],
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Spearker:"),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  //width: 300,
                                  child: Text("${modelListDetailItems[index].firstName} "
                                      "${modelListDetailItems[index].lastName} ",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

              );
            },

          ),
      ),
     /* onTap: (){
          Navigator.of(context).pushNamed(AgendaDetailPage.routeName,
             arguments: {
               'imagePath': modelListDetailItems[index].imagePath,
              }
          );
        },*/

    );
  }
}
