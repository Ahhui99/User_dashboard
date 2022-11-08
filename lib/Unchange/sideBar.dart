import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';

var mysideBar = SideBar(
    backgroundColor: Colors.white10,
    items: const [
      AdminMenuItem(
        title: 'Dashboard',
        icon: Icons.dashboard,
        route: '/',
        children: [
          AdminMenuItem(
            title: 'Home',
            icon: Icons.home,
            route: '/home',
          ),
          AdminMenuItem(
            title: 'Event',
            icon: Icons.event,
            route: '/event2',
          ),
          AdminMenuItem(
            title: 'Attendence',
            icon: Icons.ads_click,
            route: '/attendence',
          ),
          AdminMenuItem(
            title: 'NGOs',
            icon: Icons.people,
            route: '/ngo',
          ),
          AdminMenuItem(
            title: 'FAQ',
            icon: Icons.chat_bubble,
            route: '/faq',
          ),
        ],
      ),
    ],
    selectedRoute: '/Home',
    onSelected: (item) {
      if (item.route != null) {
            Get.toNamed(item.route.toString());
          }
    },
  );
