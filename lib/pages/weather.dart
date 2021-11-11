import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade200,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/weather.jpg',
            height: 679,
          ),
        ],
      ),
    );
  }
}
