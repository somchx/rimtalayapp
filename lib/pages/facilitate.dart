import 'package:flutter/material.dart';

class Facilitate extends StatefulWidget {
  const Facilitate({Key? key}) : super(key: key);

  @override
  _FacilitateState createState() => _FacilitateState();
}

class _FacilitateState extends State<Facilitate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สิ่งอำนวยความสะดวก"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('พื้นที่กลางแจ้ง'),
              Text('-ติดชายหาด'),
              Text('-สิ่งอำนวยความสะดวกสำหรับจัดบาร์บีคิว'),
              Text('-ลานระเบียง'),
              Text('-สวนหย่อม'),
              Text('กิจกรรม\n•ชายหาด\n•ตกปลา'),
              Text('อาหารและเครื่องดื่ม\n•อาหารเช้าในห้องพัก\n•บาร์'),
              Text('อินเทอร์เน็ต : อินเทอร์เน็ตไร้สาย ให้บริการทั่วโรงแรม และไม่มีค่าบริการ'),
              Text('ที่จอดรถ : ไม่มีบริการที่จอดรถ'),
              Text('บริการ\n•บริการรถรับส่ง\n•บริการรถรับส่ง(ฟรีเฉพาะท่าเรือหน้าบ้าน)'),
              Text('ทั่วไป\n•เครื่องปรับอากาศ\n•ห้องปลอดบุหรี่'),



            ],
          ),
        ),
      ),
    );
  }
}
