import 'package:flutter/material.dart';

class BigMacCard extends StatelessWidget {
  const BigMacCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF6B8E23), // Olive green
            Color(0xFF556B2F), // Dark olive green
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Header with McDonald's logo and menu icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // McDonald's golden arches
                Container(
                  child: Text(
                    'M',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
            
            SizedBox(height: 20),
            
            // Big Mac title
            Text(
              'Big Mac',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            
            SizedBox(height: 30),
            
            // Burger image placeholder
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/image-lx1yQn43by3O8zM3jd9FwhHVhsb2sz.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.orange,
                      child: Icon(
                        Icons.fastfood,
                        size: 80,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
            
            SizedBox(height: 40),
            
            // Navigation dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 30),
            
            // Nutritional information title
            Text(
              'NUTRITIONAL INFORMATION',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            
            SizedBox(height: 20),
            
            // Nutritional info grid
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // Calories
                      _buildNutritionItem('550 CAL.', 'Calories'),
                      SizedBox(height: 20),
                      // Total Carbs
                      _buildNutritionItem('45G', 'Total Carbs\n(16% DV)'),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      // Total Fat
                      _buildNutritionItem('30G', 'Total Fat\n(39% DV)'),
                      SizedBox(height: 20),
                      // Protein
                      _buildNutritionItem('25G', 'Protein'),
                    ],
                  ),
                ),
                // Calculator button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'CALCULATOR',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildNutritionItem(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

// Пример использования в приложении
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: BigMacCard(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
