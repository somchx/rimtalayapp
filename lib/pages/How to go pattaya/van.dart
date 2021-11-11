import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Van extends StatefulWidget {
  const Van({Key? key}) : super(key: key);

  @override
  _VanState createState() => _VanState();
}

class _VanState extends State<Van> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รถตู้สาธารณะ',
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
                  "การนั่งรถตู้ไป 'ท่าเรือแหลมบาลีฮาย' ใช้เวลาประมาณ 2 ชั่วโมง \n"
                      "สามารถลงรถได้ที่ 'ท่าเรือแหลมบาลีฮาย' ได้เลย\n"
                      'จุดขึ้นรถหลัก ๆ อยู่ที่ สถานีขนส่งหมอชิต2 (จตุจักร) และสถานีขนส่งเอกมัย \n'
                      '\nออกจากสถานีขนส่งหมอชิต 2\n'
                      'ซื้อตั๋วที่อาคาร C รถเริ่มออกตั้งแต่ 06.00-20.00 น.\n'
                      'ราคาค่าโดยสาร แล้วแต่บริษัท เริ่มที่ร้อยกลางๆ\n'
                      '\nออกจากสถานีขนส่งเอกมัย\n'
                      'รถเริ่มออกตั้งแต่ 05.30-20.00 น.\n'
                      'ราคาค่าโดยสาร แล้วแต่บริษัท เริ่มที่ร้อยกลางๆ\n',),
              Text(
                '** เวลารถออก ต้องตรวจสอบที่จุดขายตั๋วอีกที เนื่องจากอาจมีการปรับเปลี่ยนตามสถานการณ์โควิด-19 **\n',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
/*

ㆍ
ㆍ

ㆍ
**เวลารถออก ต้องตรวจสอบที่จุดขายตั๋วอีกที เนื่องจากอาจมีการปรับเปลี่ยนตามสถานการณ์โควิด-19**

 */