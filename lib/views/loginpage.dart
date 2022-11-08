import 'package:dashboard/views/Home_1.dart';
import 'package:dashboard/views/Home_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 32, 44, 63),
        image: DecorationImage(
          image: AssetImage("assets\dell_login.jpg"), //no image show
          fit: BoxFit.fill,
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets\dell_login.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 3,

            fixedSize: Size(300, 50), //////// HERE
          ),
          onPressed: () {
            Get.to(Home_1());
          },
          child: Text('STAFF'),
          
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,

              fixedSize: Size(300, 50), //////// HERE
            ),
            onPressed: () {},
            child: Text('ADMIN'),
          ),
        ),
      ]),
    );
  }
}