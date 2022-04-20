import 'package:flutter/material.dart';
import 'package:flutter_apps/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                place.img,
                height: 230,
                fit: BoxFit.fitWidth,
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child:  Text(
                  place.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 33.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ), //Container untuk Judul
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children:  <Widget> [
                        Icon(Icons.calendar_today),
                        Text(
                          place.openDay,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children:  <Widget> [
                        Icon(Icons.access_time_rounded),
                        Text(
                          place.openTime,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children:  <Widget> [
                        Icon(Icons.attach_money_rounded),
                        Text(
                          place.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ), //Container untuk logo
              Container(
                padding: const EdgeInsets.all(16.0),
                child:  Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ), //Container untuk Deskripsi
              Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(place.img1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(place.img2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(place.img3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(place.img4),
                        ),
                      ),
                    ],
                  )
              ), //Container untuk konten carousel
            ],
          ),
        ),
      ),
    );
  }
}

