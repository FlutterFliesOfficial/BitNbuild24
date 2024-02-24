import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hotstevie/screens/AddItem.dart';
import 'package:hotstevie/screens/custom_drop_down.dart';
import 'package:hotstevie/screens/plants_card.dart';
import 'package:hotstevie/screens/seed_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "Hello, Angel",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddNewObjScreen()),
                  );
                  // Handle button press
                },
                child: Text('Add item'),
              ),
              Text(
                "Balance your world",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 40),
              CustomDropDown(),
            ],
          ),
        ),
        Positioned(
          top: 250,
          bottom: 0,
          right: 0,
          left: 0,
          child: PlantsCard(),
        ),
        Positioned(
          top: 410,
          bottom: 0,
          right: 0,
          left: 0,
          child: SeedCard(),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: SizedBox(height: 110, child: LineChart(mainData())),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
          show: true, drawHorizontalLine: false, drawVerticalLine: false),
      titlesData: const FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

List<Color> gradientColors = [Colors.white, Colors.white];
