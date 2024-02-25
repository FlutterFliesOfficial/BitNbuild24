import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hotstevie/screens/custom_plants_column.dart';

class SeedCard extends StatelessWidget {
  const SeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('objects').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        // Access data from the snapshot
        List<DocumentSnapshot> documents = snapshot.data!.docs;

        // Return a widget to display the data
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: documents.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> data =
                      documents[index].data() as Map<String, dynamic>;

                  // Extract data fields
                  String name = data['name'] ?? '';
                  double price = (data['price'] ?? 0.0).toDouble();
                  double quantity = (data['quantity'] ?? 0.0).toDouble();
                  double weight = (data['weight'] ?? 1.0).toDouble();

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomPlantsColumn(
                        color: Colors.green,
                        figures: name,
                        headings: 'name',
                        icon: Icons.arrow_drop_down,
                      ),
                      CustomPlantsColumn(
                        color: Colors.brown,
                        figures: weight.toString(),
                        headings: 'weight',
                        icon: Icons.arrow_drop_up,
                      ),
                      CustomPlantsColumn(
                        color: Colors.brown,
                        figures: price.toString(),
                        headings: 'price',
                        icon: Icons.arrow_drop_up,
                      ),
                      CustomPlantsColumn(
                        color: Colors.brown,
                        figures: quantity.toString(),
                        headings: 'quantity',
                        icon: Icons.arrow_drop_up,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
