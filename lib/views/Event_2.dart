import 'package:dashboard/Unchange/appBar_user.dart';
import 'package:dashboard/Unchange/constant.dart';
import 'package:dashboard/Unchange/sideBar.dart';
import 'package:dashboard/views/Donation.dart';
import 'package:dashboard/views/Home_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Event_2 extends StatelessWidget {
  const Event_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: HexColor('FEFBF6'),
      appBar: myappBar,
      sideBar: mysideBar,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // margin: const EdgeInsets.all(40),
          // padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('./assets/cover.jpg'),
                        fit: BoxFit.cover)),
                height: 400,
              ),
              Material(
                elevation: 2,
                color: Colors.blue,
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      lg: 4,
                      md: 12,
                      xs: 12,
                      child: Container(
                        height: 100,
                        alignment: const Alignment(0, 0),
                        child: const Text(
                          'Event_2 Charity',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            // color: HexColor('242565'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      lg: 2,
                      md: 12,
                      xs: 12,
                      child: _Event_2Info('Location', 'Kuala Lumpur'),
                    ),
                    ResponsiveGridCol(
                      lg: 2,
                      md: 12,
                      xs: 12,
                      child: _Event_2Info('Participants', '1/1000 Joined'),
                    ),
                    ResponsiveGridCol(
                      lg: 4,
                      md: 12,
                      xs: 12,
                      child: Container(
                        height: 100,
                        alignment: const Alignment(0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(250, 50),
                          ),
                          onPressed: () {
                            Get.to(Donation());
                          },
                          child: Text(
                            'Donation',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: 500,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'assets/run.jpg', //image not shown
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: const Text(
                                      'Run For Life',
                                      style: textTitle,
                                    ),
                                  ),
                                ),
                                info('Category', 'Individual 5km Marathon'),
                                info('Prize', 'Medal\nCertificate'),
                                info(
                                    'Participants', '500 - 1500 Participants '),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: flatButtonStyle,
                                onPressed: () {},
                                child: Text('Register')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: 500,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'assets/game.png', //image not shown
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: const Text(
                                      'Games For Life',
                                      style: textTitle,
                                    ),
                                  ),
                                ),
                                info('Category', 'Child and Adult'),
                                info('Prize',
                                    '-Tug of War\n-Shoot Balloon\n-Bingo'),
                                info(
                                    'Participants', '500 - 1500 Participants '),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: flatButtonStyle,
                                onPressed: () {},
                                child: Text('Register')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: 500,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'assets/food.png', //image not shown
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: const Text(
                                      'Food For Life',
                                      style: textTitle,
                                    ),
                                  ),
                                ),
                                info('Category',
                                    'Spagetti\nBurger\nTraditional Cuisine'),
                                info('Price', 'Free'),
                                info(
                                    'Participants', '500 - 1500 Participants '),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: flatButtonStyle,
                                onPressed: () {},
                                child: Text('Register')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: 500,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'assets/food.png', //image not shown
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: const Text(
                                      'Lucky For Life',
                                      style: textTitle,
                                    ),
                                  ),
                                ),
                                info('Category',
                                    'Girls\nWoman\nBoys\nMen'),
                                info('Price', 'Cash\nCertificate'),
                                info(
                                    'Participants', '500 Participants '),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: flatButtonStyle,
                                onPressed: () {},
                                child: Text('Register')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Event_2Info(String title, content) {
  return Container(
    color: Colors.blue,
    height: 100,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTitle,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              content,
              style: textTitle,
            ),
          ),
        ],
      ),
    ),
  );
}
