import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          //color: Colors.teal.shade100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/rimta.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:18.0,right: 20,left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(4.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              '\n -Rimtalay Resort Koh Larn ตั้งอยู่บริเวณหาดตายายของเกาะล้าน\n -ห่างจากท่าเรือหน้าบ้านไม่เกิน 900 ม. และห่างจากหาดตายาย 600 ม.\n'
                                  ' -มีสะพานส่วนตัวทอดยาวออกไปยังทะเลซึ่งผู้เข้าพักสามารถตกปลาได้\n'
                                  ' -ห้องพักทุกห้องตกแต่งด้วยธีมสีขาวและสีฟ้า และสามารถมองเห็นวิวทะเล\n'
                                  ' -ที่พักมีอาหารเช้าแบบอเมริกันให้บริการ ลานระเบียง\n -ผู้เข้าพักสามารถรับประทานอาหารริมทะเลได้\n'
                                  ' -ที่พักตั้งอยู่ห่างจากจุดชมวิวเกาะล้าน 3.1 กม.\n -ห่างจากเกาะไผ่ 13 กม. ห่างจากเกาะสักโดยใช้เวลาเดิน 17 นาที\n'
                                  ' -ห่างจากเกาะล้าน 1.7 กม. ห่างจากเกาะครก 1.8 กม.\n -ที่พักมีพื้นที่ชายหาดส่วนตัว\n'
                                  ' -ทางรีสอร์ทมีคาเฟ่ของทางรีสอร์ทเอง Indigo Cafe\n',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),




            ],
          ),
        ));
  }
}
