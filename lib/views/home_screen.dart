import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tip_calculator/components/tip_card.dart';
import 'package:tip_calculator/views/manage_new_tip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Smart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            return const TipCard();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => const ManageTip());
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Tip"),
      ),
    );
  }
}
