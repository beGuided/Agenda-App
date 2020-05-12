import 'package:flutter/material.dart';

class AgendaDetailPage extends StatelessWidget {
  static const routeName = '/AgendaDetailPage';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Details Page',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 350,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 400,
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                      image: DecorationImage(image: AssetImage(
                        routeArgs["imagesPath"]
                      ), fit: BoxFit.cover)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
