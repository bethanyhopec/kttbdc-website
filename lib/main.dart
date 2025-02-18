import 'package:flutter/material.dart';


class ComponentsUnit extends StatelessWidget {
  const ComponentsUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image covering half the screen and centered vertically
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/asset1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Blue overlay
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            // ignore: deprecated_member_use
            color: const Color.fromARGB(255, 19, 205, 252).withOpacity(0.2), // Blue overlay with 50% opacity
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                child: const Text(
                  'COMPONENTS UNITS',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 84,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  children: [
                    _buildAssetWithButton(
                      imagePath: 'lib/assets/itso.png',
                      width: 450,
                      height: 450,
                      buttonText: 'ITSO',
                    ),
                    _buildAssetWithButton(
                      imagePath: 'lib/assets/ktto.png',
                      width: 450,
                      height: 450,
                      buttonText: 'KTTO',
                    ),
                    _buildAssetWithButton(
                      imagePath: 'lib/assets/binhi.png',
                      width: 450,
                      height: 450,
                      buttonText: 'BINHI',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40), // Space at the bottom of the screen
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAssetWithButton({
    required String imagePath,
    required double width,
    required double height,
    required String buttonText,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.3), // Shadow color
                spreadRadius: 1, // Spread radius
                blurRadius: 20, // Blur radius
                offset: const Offset(0, 2), // Offset for shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Rounded corners
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 20), // Space between image and button
        ElevatedButton(
          onPressed: () {
            // Define your onPressed action here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 230, 181, 91), // Yellow-orange color
            shape: const StadiumBorder(),
            shadowColor: Colors.black,
            elevation: 30,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}