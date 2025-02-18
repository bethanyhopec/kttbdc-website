import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('lib/assets/background.png'), // Background image
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Arnel - Centered at the top
                _buildTeamMember(
                    'lib/assets/sir.png', 'ARNELN.SECONDES', 'Director', [
                  Colors.yellow[300]!,
                  Colors.yellow[700]!,
                ]),
                SizedBox(height: 40), // Spacing between Arnel and the Teds

                // Teds - Placed in a horizontal row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildTeamMember('lib/assets/missted.png',
                        'TED HYACINTH T.ASPERA', 'General Manager', [
                      Colors.orange[300]!,
                      Colors.orange[700]!,
                    ]),
                    SizedBox(width: 20), // Spacing between Teds
                    _buildTeamMember('lib/assets/missted.png',
                        'TED HYACINTH T.ASPERA', 'General Manager', [
                      Colors.red[300]!,
                      Colors.red[700]!,
                    ]),
                    SizedBox(width: 20), // Spacing between Teds
                    _buildTeamMember('lib/assets/missted.png',
                        'TED HYACINTH T.ASPERA', 'General Manager', [
                      Colors.purple[300]!,
                      Colors.purple[700]!,
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build a team member widget
  Widget _buildTeamMember(String imagePath, String name, String position,
      List<Color> gradientColors) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Background gradient container
            Container(
              width: 150,
              height: 180, // Slightly shorter than the image
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: gradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            // Image container
            Container(
              width: 150,
              height: 200, // Slightly taller than the background
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          position,
          style: TextStyle(
              fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white),
        ),
      ],
    );
  }
}
