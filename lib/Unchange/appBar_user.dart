import 'package:dashboard/views/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var myappBar = AppBar(
          foregroundColor: Colors.blue,
          elevation: 100,
          title: const Text('Dashboard'),
          actions: [
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 10, bottom: 10, right: 5.0),
                  height: 50,
                  width: 50,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('./assets/user.jpg'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.only(top: 10, bottom: 10, right: 40.0),
                  height: 50,
                  width: 80,
                  child: TextButton(onPressed: (){
                    Get.to(Index());
                  }, child: Text('Log-Out')),
                ),
              ],
            ),
          ]);