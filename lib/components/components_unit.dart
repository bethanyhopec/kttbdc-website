import 'package:flutter/material.dart';

class ComponentUnits extends StatelessWidget {
  const ComponentUnits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('COMPONENT UNITS', style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildComponentUnit('assets/image3.png', 'ITSO'),
              _buildComponentUnit('assets/image4.png', 'KTTO'),
              _buildComponentUnit('assets/image5.png', 'BINHI'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildComponentUnit(String imagePath, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image.asset(imagePath, height: 100),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
