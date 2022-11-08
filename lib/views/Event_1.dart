import 'package:dashboard/Unchange/appBar_user.dart';
import 'package:dashboard/Unchange/constant.dart';
import 'package:dashboard/Unchange/sideBar.dart';
import 'package:dashboard/views/Home_2.dart';
import 'package:dashboard/views/Register_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Event_1 extends StatelessWidget {
  const Event_1({Key? key}) : super(key: key);

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
                          'Event_1 Charity',
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
                      child: _Event_1Info('Location', 'Kuala Lumpur'),
                    ),
                    ResponsiveGridCol(
                      lg: 2,
                      md: 12,
                      xs: 12,
                      child: _Event_1Info('Participants', '1/1000 Joined'),
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
                            Get.to(Event_Register());
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Event_1Info(String title, content) {
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
// Material(
//                 elevation: 2,
//                 child: Container(
//                   color: HexColor('#eeeeee'),
//                   alignment: Alignment.centerLeft,
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   height: 100,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Event_1 Charity',
//                               style: titleStyle,
//                             ),
//                             Container(
//                               margin: EdgeInsets.symmetric(horizontal: 20),
//                               child: Card(
//                                 child: Container(
//                                   margin: EdgeInsets.symmetric(horizontal: 10),
//                                   alignment: Alignment.center,
//                                   height: 30,
//                                   width: 200,
//                                   color: Colors.white,
//                                   child: Text(
//                                     '1/500 Participants ',
//                                     style: titleStyle,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: Size(250, 50),
//                         ),
//                         onPressed: () {},
//                         child: Text('Joined'),
//                       )
//                     ],
//                   ),
//                 ),
//               ),