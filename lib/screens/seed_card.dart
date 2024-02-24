import 'package:flutter/material.dart';
import 'package:hotstevie/screens/custom_plants_column.dart';

class SeedCard extends StatelessWidget {
  const SeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.brown.shade900,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(45)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text(
            "Seeds",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPlantsColumn(
                color: Colors.green,
                figures: '3021',
                headings: 'Sown',
                icon: Icons.arrow_drop_down,
              ),
              CustomPlantsColumn(
                color: Colors.brown,
                figures: '131',
                headings: 'Harvest',
                icon: Icons.arrow_drop_up,
              ),
              Image.asset(
                'assets/seeds.jpg',
                height: 75,
                width: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
