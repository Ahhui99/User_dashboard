import 'package:dashboard/Unchange/constant.dart';
import 'package:dashboard/views/Event_2.dart';
import 'package:dashboard/views/Home_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'SECURE CHECKOUT',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose your prefereable NGO to proceed with the donation',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: flatButtonStyle,
                      onPressed: () {
                        Get.to(Event_2());
                      },
                      child: Text('Donate')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
