import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sli extends StatefulWidget {
  const sli({Key? key}) : super(key: key);

  @override
  _slideState createState() => _slideState();
}

class _slideState extends State<sli> {
  final List<String> imageList = [

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKQqMLCWmvXwV8DmsqexljcOP1DNH1lo-nfQbpQhANL1EKt2jZNl9YTsUZkH1AQX38V-Q&usqp=CAU'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYMJ3Y7y9kP5E2KJZcWj6HZphXV3wRUvxLEmZhLJ6LKxGPOVkdcnjLgMIPFRzdHw8ires&usqp=CAU'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKQqMLCWmvXwV8DmsqexljcOP1DNH1lo-nfQbpQhANL1EKt2jZNl9YTsUZkH1AQX38V-Q&usqp=CAU'

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Slider', style: GoogleFonts.alikeAngular(fontSize: 22),),
          centerTitle: true,
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(e,
                    width: 800,
                    height: 350,
                    fit: BoxFit.cover,)
                ],
              ),
            )).toList(),

          ),
        ),
      ),
    );
  }
}
