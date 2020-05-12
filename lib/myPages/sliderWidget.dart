import 'package:flutter/material.dart';
import 'package:scrow/model/homeSlider.dart';



class sliderItems extends StatelessWidget {
  int index;
  sliderItems(this.index);
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[50],
              image: DecorationImage(image:
              AssetImage(sliderList[index].url),
                  fit: BoxFit.cover)
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(sliderList[index].title,
          style: TextStyle(
            fontSize: 15,
            //fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(sliderList[index].description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
