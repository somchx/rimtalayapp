import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rimtalayapp/pages/Room/room.dart';

import 'facilitate.dart';

class Defualt extends StatefulWidget {
  const Defualt({Key? key}) : super(key: key);

  @override
  _DefualtState createState() => _DefualtState();
}

class _DefualtState extends State<Defualt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Colors.teal.shade100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cover.jpg"),
          fit: BoxFit.cover,

          //colorBlendMode: BlendMode.softLight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Room()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade100,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_work_rounded,
                                size: 60.0,
                                color: Colors.black87,
                              ),
                              Text(
                                'ห้องพัก',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Facilitate()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade100,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wifi,
                                size: 60.0,
                                color: Colors.black87,
                              ),
                              Text(
                                'สิ่งอำนวยความสะดวก',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
