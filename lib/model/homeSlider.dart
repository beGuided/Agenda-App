import 'package:flutter/cupertino.dart';

class sliderListItem{
  final String url;
  final String title;
  final String description;

  sliderListItem({
    @required this.url,
    @required this.title,
    @required this.description,
  });
}
final sliderList = [
  sliderListItem(
    url: "asset/images/1.jpg",
    title: "Title 1",
    description: "We all know how hard it can be to make a site look "
        "like the demo, so to make your start into the world of X as easy "
        "as possible we have included the demo",
  ),

  sliderListItem(
    url: "asset/images/N1.jpg",
    title: "Title 2",
    description: "We all know how hard it can be to make a site look "
        "like the demo, so to make your start into the world of X as easy "
        "as possible we have included the demo",
  ),

  sliderListItem(
    url: "asset/images/3.jpg",
    title: "Title 3",
    description: "We all know how hard it can be to make a site look "
        "like the demo, so to make your start into the world of X as easy "
        "as possible we have included the demo",
  ),

  sliderListItem(
    url: "asset/images/G1.jpg",
    title: "Title 4",
    description: "We all know how hard it can be to make a site look "
        "like the demo, so to make your start into the world of X as easy "
        "as possible we have included the demo",
  ),
];

