import 'package:flutter/material.dart';


class profileDetailPage extends StatelessWidget {
  static const routeName = '/profileDetailPage';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
            color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pop();
            }),
        title: Row(
          children: <Widget>[
            Text( routeArgs['firstName'],
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text( "${routeArgs['lastName']}'s ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            Text( "Profile",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 350,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(
                          routeArgs['imagePath'],
                      ), fit: BoxFit.cover)
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                      Text("Will be Speaking on",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15

                        ),),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(routeArgs['topic'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20
                          ),),
                      ),
                  SizedBox(
                    height: 10,
                  ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.star,
                      color: Colors.yellow,
                      size: 15,),
                    SizedBox(
                      width: 0,
                    ),
                    Icon(Icons.star,
                      color: Colors.yellow,
                      size: 15,),
                    Icon(Icons.star,
                      color: Colors.yellow,
                      size: 15,),
                    Icon(Icons.star,
                      color: Colors.yellow,
                      size: 15,),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(routeArgs['firstName'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30

                      ),),
                    SizedBox(
                      width: 10,
                    ),
                    Text(routeArgs['lastName'],
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30

                      ),),
                  ],
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(routeArgs['position'],
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15

                      ),),
                    SizedBox(
                      width: 10,
                    ),
                    Text(routeArgs['company'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20

                      ),),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(routeArgs['profile']),
                ),

                SizedBox(
                  height: 40,
                ),
                    ],
                  ),
            ),
        ],
      ),
    );

  }
}
