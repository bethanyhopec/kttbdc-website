import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        Color(0xFF00303F).withOpacity(1.0),
                        Color(0xFFDCAE1D).withOpacity(0.2)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    'KTTBDC',
                    style: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(3, 3),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Knowledge Technology Transfer & Business Development',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 4,
                  width: 300,
                  color: Color(0xFF00303F),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDCAE1D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Discover More',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      SizedBox(width: 8),
                      Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 100),
          Image.asset('lib/assets/image 1.png', height: 500),
        ],
      ),
    );
  }
}
