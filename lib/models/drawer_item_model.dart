import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  const DrawerItem(this.title, this.icon);
}

class DrawerItems {
  static const home = DrawerItem('Home', Icons.home);
  static const profile = DrawerItem('Profile', Icons.person);
  static const booking = DrawerItem('Booking', Icons.calendar_month);
  static const history = DrawerItem('History', Icons.history);
  static const contact = DrawerItem('Contact', Icons.contact_mail);
  static const logInOut = DrawerItem('LogOut', Icons.logout);

  static const allMenu = <DrawerItem>[
    home,
    profile,
    booking,
    history,
    contact,
    logInOut,
  ];
}
