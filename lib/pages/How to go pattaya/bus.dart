import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รถทัวร์/มินิบัส',
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
                  'สามารถเลือกขึ้นรถได้จากสถานีขนส่งหมอชิต2 (จตุจักร) และสถานีขนส่งเอกมัย \n'
                  'การเดินทางจะใช้เวลาประมาณ 3 ชั่วโมงกว่า \n'
                  'ซึ่งหลักๆ แล้วรถทัวร์/มินิบัส จะไปจอดที่ขนส่งพัทยา \n'
                  '\nออกจากสถานีขนส่งหมอชิต 2\n'
                  'มีรถตั้งแต่ประมาณ 06.00 - 20.00 น.\n'
                  'รถออกทุก 30-40 นาที (ช่วงโควิด-19 อาจจะออกทุกชั่วโมง)\n'
                  'มีสองเส้นทางให้เลือก คือ เส้นมอเตอร์เวย์ และเส้นบางนา-ตราด\n'
                  'ราคาค่าโดยสาร แล้วแต่บริษัท เริ่มที่ร้อยต้นๆ\n'
                  '\nออกจากสถานีขนส่งเอกมัย\n'
                  'มีรถตั้งแต่ประมาณ 06.00 - 20.00 น.\n'
                  'รถออกทุกๆ 30-40 นาที (ช่วงโควิด-19 อาจจะออกทุกชั่วโมง)\n'
                  'ราคาค่าโดยสาร แล้วแต่บริษัท เริ่มที่ร้อยต้นๆ\n'),
              Text(
                '** เวลารถออก ต้องตรวจสอบที่จุดขายตั๋วอีกที เนื่องจากอาจมีการปรับเปลี่ยนตามสถานการณ์โควิด-19 **\n',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),
              ),
              Text(
                "เมื่อถึงขนส่งพัทยาหรือจุดจอดรถทัวร์แล้ว ให้ต่อสองแถวไป 'ท่าเรือแหลมบาลีฮาย' อีก 2 ต่อ คือ\n"
                '-นั่งจากขนส่งพัทยาไป Terminal 21 (วงเวียน) \n'
                '-ต่อสองแถวจากวงเวียนไป walking street พัทยาใต้ \n'
                'แล้วเดินตัด walking street ก็จะถึงแหลมบาลีฮายได้เหมือนกัน\n',
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
