import 'package:flutter/material.dart';
import 'package:hotstevie/screens/custom_plants_column.dart';

class PlantsCard extends StatelessWidget {
  const PlantsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.brown.shade700,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(45)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            "Plants and trees",
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
                headings: 'In Growing',
                icon: Icons.arrow_drop_down,
              ),
              CustomPlantsColumn(
                color: Colors.brown,
                figures: '131',
                headings: 'Custom by Man',
                icon: Icons.arrow_drop_up,
              ),
              Image.asset(
                'assets/plant.jpg',
                height: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
