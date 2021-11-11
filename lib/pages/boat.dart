import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rimtalayapp/pages/Room/room.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool des = false;

  _control() {
    setState(() {
      des = !des;
    });
  }

  double cost = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.teal.shade100,
      /*decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/boatt.jpg"),
          fit: BoxFit.cover,

          //colorBlendMode: BlendMode.softLight,
        ),
      ),*/
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: !des ? _control : null,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_boat_outlined,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          Text(
                            'หาดตาแหวน',
                            style: TextStyle(fontSize: 18.0),
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
                      onPressed: des ? _control : null,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_boat_outlined,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          Text(
                            'ท่าเรือหน้าบ้าน',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          !des
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Colors.yellow.shade100,
                    ),
                    height: 175,

                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          'เวลาเดินเรือท่าเรือหน้าบ้าน',
                          style: TextStyle(fontSize: 16),
                        )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'ออกจากพัทยา	\n  7.00\n  10.00\n  12.00\n  14.00\n  15.30\n  17.00\n  18.30\n'),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                                'ออกจากเกาะล้าน	\n  6.30\n  7.30\n  9.30\n  12.00\n  14.00\n  15.30\n  17.00\n  18.30'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 175,
                    color: Colors.yellow.shade100,
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          'เวลาเดินเรือท่าเรือหาดตาแหวน',
                          style: TextStyle(fontSize: 16),
                        )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'ออกจากพัทยา	\n  8.00\n  9.00\n  11.00\n  13.00'),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                                'ออกจากเกาะล้าน	\n  13.00\n  14.00\n  15.00\n  16.00\n  17.00\n'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
          Container(
            height: 160,
            width: 170,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SpinBox(
                  decoration: InputDecoration(labelText: 'จำนวนคน'),
                  textStyle: TextStyle(fontSize: 30),
                  min: 1,
                  max: 100,
                  value: 0,
                  onChanged: (value) {
                    cost = (value * 30);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'ราคา 30 บาท',
                    style: TextStyle(fontSize: 28.0, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _showMaterialDialog('ค่าเรือโดยสาร', '$cost บาท');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calculate,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    Text(
                      'CALCULATE',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            TextButton(
              child: const Text('OK'), // ปุ่ม OK ใน dialog
              onPressed: () {
                Navigator.of(context).pop(); // ปิด dialog
              },
            ),
          ],
        );
      },
    );
  }
}
