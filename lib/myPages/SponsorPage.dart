import 'package:flutter/material.dart';
import 'package:scrow/model/sponsorModel.dart';

class SponsorsScreen extends StatefulWidget {
  @override
  _SponsorsScreenState createState() => _SponsorsScreenState();
}

class _SponsorsScreenState extends State<SponsorsScreen> {
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
        title: Text('Meet Our Sponsors',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: ListView.builder(
            itemCount: sponsorModelList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Row(
                  children: <Widget>[

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(
                              sponsorModelList[index].brandImage
                          ), fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 200,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                           // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(sponsorModelList[index].brandName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                              Text(sponsorModelList[index].brandWebsite,
                                textAlign: TextAlign.center,),
                              SizedBox(
                                height: 10,
                              ),
                              Text(sponsorModelList[index].brandStory),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
      ),
    );
  }
}
