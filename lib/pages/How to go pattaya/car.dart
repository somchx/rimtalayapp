import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รถยนต์ส่วนตัว',
          style: GoogleFonts.prompt(fontSize: 24.0),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "เส้นทางบางนา-ตราด\n"
                "ทางด่วนบูรพาวิถี ไปจนสุดทางด่วนตรงอมตะนคร\n"
                'จากนั้นให้ชิดซ้ายเข้าเส้นบายพาสเพื่อเลี่ยงรถติดในตัวเมืองชลบุรี\n'
                'ขับไปเรื่อยๆ จะมีป้ายบอกไปพัทยา\n'
                '\nเส้นทางบางนา-บางปะกง\n'
                'ขับมาเส้นทางหลวง 34 ทางบางนา - บางปะกง แล้วเข้าทางหลวง\n'
                'หมายเลข 3 เส้นสุขุมวิท\n'
                'จะผ่านเมืองชลบุรี บางแสน และศรีราชา จากนั้นให้ตรงไปที่พัทยา\n'
                '\nทางหลวงพิเศษมอเตอร์เวย์\n'
                'ขับไปตามป้ายเมืองชลบุรี แล้วเลี้ยวซ้ายเข้าเส้นสุขุมวิทสู่พัทยา\n',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
/*







 */
