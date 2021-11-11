import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rimtalayapp/pages/How%20to%20go%20pattaya/bus.dart';
import 'package:rimtalayapp/pages/How%20to%20go%20pattaya/car.dart';
import 'package:rimtalayapp/pages/How%20to%20go%20pattaya/van.dart';

import 'train.dart';

class Pattaya extends StatefulWidget {
  const Pattaya({Key? key}) : super(key: key);

  @override
  _PattayaState createState() => _PattayaState();
}

class _PattayaState extends State<Pattaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Colors.teal.shade100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pat.jpg"),
          fit: BoxFit.cover,

          //colorBlendMode: BlendMode.softLight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '\nการเดินทางมาพัทยา',
            textAlign: TextAlign.center,
        style: TextStyle(fontSize:22.0,fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Train()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.train,
                            size: 60.0,
                            color: Colors.black87,
                          ),
                          Text(
                            'รถไฟ',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black87),
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Car()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.car_rental,
                            size: 60.0,
                            color: Colors.black87,
                          ),
                          Text(
                            'รถส่วนตัว',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Bus()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.bus_alert,
                            size: 60.0,
                            color: Colors.black87,
                          ),
                          Text(
                            'รถทัวร์/มินิบัส',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black87),
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Van()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_train,
                            size: 60.0,
                            color: Colors.black87,
                          ),
                          Text(
                            'รถตู้',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black87),
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
    ));
  }
}
