import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RoomDetails.dart';
import 'RoomItem.dart';

class Room extends StatefulWidget {
  static const routeName = '/room';

  const Room({Key? key}) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  var item = List<String>.generate(1000, (index) => 'dd $index');
  var items = [
    RoomItem(
        id:1,
        name: "Seaside View",
        price: 1800,
        price2: 2600,
        image: 'Seaside_View.jpg'),
    RoomItem(
        id:2,
        name: "Rimtalay Superior",
        price: 1600,
        price2: 3000,
        image: 'Superior_Room.jpg'),
    RoomItem(
        id:3,
        name: "Beach front",
        price: 1900,
        price2: 3000,
        image: 'Beach_Front.jpg'),
    RoomItem(
        id:4,
        name: "Blue ocean villa",
        price: 2900,
        price2: 4000,
        image: 'Blue_Ocean_Villa.jpg'),
    RoomItem(
        id:5,
        name: "Green Ocean Villa",
        price: 3200,
        price2: 4500,
        image: 'Green_Ocean_Villa.jpg'),
    RoomItem(
        id:6,
        name: "Ocean front",
        price: 3500,
        price2: 4900,
        image: 'Ocean_Front.jpg'),
    RoomItem(
        id:7,
        name: "Pano Mini",
        price: 10000,
        price2: 14000,
        image: 'Pano_Mini_Sea_View.jpg'),
    RoomItem(
        id:8,
        name: "Pano Sea Ocean",
        price: 16000,
        price2: 20000,
        image: 'Pano_Sea_Ocean_View.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rimtalay Room"),
      ),
      body: Container(

        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            var item = items[index];

            return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //print('${item.name} ราคา ${item.price} บาท');
                  print(item);
                  Navigator.pushNamed(
                    context,
                    RoomDetails.routeName, //FoodDetails
                    arguments: items[index],
                  );
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: GoogleFonts.prompt(fontSize: 18.0),
                        ),
                        Text(
                          item.price.toString() +
                              ' - ' +
                              item.price2.toString() +
                              ' บาท',
                          style: GoogleFonts.prompt(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
