import 'package:dashboard/Unchange/appBar_user.dart';
import 'package:dashboard/Unchange/constant.dart';
import 'package:dashboard/views/Event_1.dart';
import 'package:dashboard/views/Event_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:get/get.dart';
import '../Services/services.dart';
import '../model/Catfacts.dart';
import '../Unchange/sideBar.dart';

class Home_2 extends StatefulWidget {
  const Home_2({Key? key}) : super(key: key);

  @override
  State<Home_2> createState() => _Home_2State();
}

class _Home_2State extends State<Home_2> {
  List<Catfacts>? catfact;
  Catfacts? cat;
  bool isLoading = false;

  getcatfact() async {
    cat = await Services().getCatfacts();
    if (cat != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getcatfact();
  }

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;

    return AdminScaffold(
      // backgroundColor: Colors.white,
      backgroundColor: HexColor('FEFBF6'),
      // backgroundColor: HexColor('#eeeeee'),
      // backgroundColor: Color.fromARGB(179, 243, 243, 243),
      appBar: myappBar,
      sideBar: mysideBar,
      body: SingleChildScrollView(
        child: Container(
          // color: HexColor('#eeeeee'),
          // height: 1000,
          width: MediaQuery.of(context).size.width,
          // - 240.0,
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Text(
                      "Announcement",
                      style: titleStyle,
                    ),
                  ),
                  InkWell(
                    child: Material(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      elevation: 5,
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        child: Text(
                          'Announcement !',
                          style: textTitle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 50,
                    child: Text(
                      "Registered Events",
                      style: titleStyle,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Event_2(), routeName: '/event');
                    },
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
                                    './assets/cover.jpg',
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4),
                                        child: const Text(
                                          'Dell Charity Event',
                                          style: textTitle,
                                        ),
                                      ),
                                    ),
                                    info('Location', 'Kuala Lumpur'),
                                    info('Time', '9.00 am - 10.00 pm'),
                                    info('Participants', '1.5K / 5000 '),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    style: flatButtonStyle,
                                    onPressed: () {
                                      Get.to(Event_2());
                                    },
                                    child: Text('Registered')),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 50,
                    child: Text(
                      "Upcoming Events",
                      style: titleStyle,
                    ),
                  ),
                  Material(
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
                                  './assets/profile.jpg',
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4),
                                      child: const Text(
                                        'Dell Charity Event',
                                        style: textTitle,
                                      ),
                                    ),
                                  ),
                                  info('Location', 'Kuala Lumpur'),
                                  info('Time', '9.00 am - 10.00 pm'),
                                  info('Participants', '0 / 5000 '),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                  style: flatButtonStyle,
                                  onPressed: () {},
                                  child: Text('Registered')),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 300,
                // color: Colors.red,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (isLoading) {
                        return Container(
                          color: Colors.amber,
                          child: Center(child: Text(cat?.fact ?? "0")),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget info(String title, String content) {
  return Flexible(
    flex: 1,
    child: Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            constraints: BoxConstraints(minWidth: 80),
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              title,
              style: textContentTitle,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Text(
              content,
              style: textContent,
            ),
          ),
        ),
      ],
    ),
  );
}
