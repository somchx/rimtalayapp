import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Train extends StatefulWidget {
  const Train({Key? key}) : super(key: key);

  @override
  _TrainState createState() => _TrainState();
}

class _TrainState extends State<Train> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รถไฟ',
          style: GoogleFonts.prompt(fontSize: 24.0),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('วันธรรมดา จะเป็นขบวนธรรมดา เส้นทาง กรุงเทพฯ - พัทยาใต้\n'
                  'ราคาตั๋วเริ่มต้นสำหรับรถไฟชั้น 3 จะอยู่ที่ 32 บาท/เที่ยว\n'
                  'รอบรถไฟ กรุงเทพฯ - พัทยาใต้ ขบวนวันธรรมดา (มีแค่วันละ 1 รอบ)\n'
                  'ออกจาก สถานีหัวลำโพง 6:55 น. ถึง สถานีพัทยาใต้ 10:39 น.\n'
                  'ออกจาก สถานีพัทยาใต้ 14:14 น. ถึง สถานีหัวลำโพง 18:15 น.\n'
                  '\nเสาร์-อาทิตย์ จะเป็นขบวนรถไฟเส้นทางพิเศษ \n'
                  'กรุงเทพฯ-พัทยา-บ้านพลูตาหลวง เป็นขบวนรถปรับอากาศชั้น 2 \n'
                  'มีให้บริการเฉพาะเสาร์-อาทิตย์เท่านั้น ในราคา 170 บาท/เที่ยว\n'
                  'รอบรถไฟ กรุงเทพฯ-พัทยา-บ้านพลูตาหลวง ขบวนพิเศษ (มีแค่วันละ 1 รอบ)\n'
                  'ออกจาก สถานีหัวลำโพง - 06.45 น. ถึง สถานีพัทยา - 09.13 น.\n'
                  'ออกจาก สถานีพัทยา - 16.26 น. ถึง สถานีหัวลำโพง - 18.55 น.\n'
                  '\nเมื่อถึงปลายทางแล้ว ไม่ว่าจะเป็นสถานี พัทยาใต้ หรือ พัทยา \n'
                  "เราจะต้องเดินทางต่อไปยัง 'ท่าเรือแหลมบาลีฮาย' \n"
                  'โดยรถสองแถวจากหน้าสถานีรถไฟ\n(ราคาเริ่มต้นประมาณ 30 บาท)\n',),
            ],
          ),
        ),
      ),
    );
  }
}
/*








 */
