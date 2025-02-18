import 'package:flutter/material.dart';
import 'pages/kttbdc_page.dart';

void main() {
  runApp(KTTBDCApp());
}

class KTTBDCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KTTBDCPage(),
    );
  }
}
