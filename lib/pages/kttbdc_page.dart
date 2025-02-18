import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/banner.dart';

class KTTBDCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            BannerSection(),
            
          ],
        ),
      ),
    );
  }
}
