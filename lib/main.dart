import 'package:card_collector/providers/card_provider.dart';
import 'package:card_collector/screens/auth_screen.dart';
import 'package:card_collector/screens/booking_screen.dart';
import 'package:card_collector/screens/contact_screen.dart';
import 'package:card_collector/screens/history_screen.dart';
import 'package:card_collector/screens/home_screen.dart';
import 'package:card_collector/screens/menu_screen.dart';
import 'package:card_collector/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:provider/provider.dart';

import 'models/drawer_item_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  DrawerItem currItem = DrawerItems.home;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CardsProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Card Collector Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SliderDrawer(
            key: _key,
            sliderOpenSize: 190,
            appBar: getSliderAppBar(),
            slider: MenuScreen(
              currItem: currItem,
              onSelectedItem: (item) {
                setState(() => currItem = item);
                _key.currentState!.closeSlider();
              },
            ),
            child: getScreen(),
          ),
        ),
      ),
    );
  }

  Widget getScreen() {
    switch (currItem) {
      case DrawerItems.home:
        return const HomeScreen();
      case DrawerItems.profile:
        return const ProfileScreen();
      case DrawerItems.booking:
        return const BookingScreen();
      case DrawerItems.history:
        return const HistoryScreen();
      case DrawerItems.contact:
        return const ContactScreen();
      case DrawerItems.logInOut:
        return const AuthScreen();
      default:
        return const HomeScreen();
    }
  }

  Widget getSliderAppBar() {
    switch (currItem) {
      case DrawerItems.home:
        return SliderAppBar(
          appBarColor: Colors.blue.shade500,
          title: const Text("Home",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      case DrawerItems.profile:
        return SliderAppBar(
          appBarColor: Colors.yellow.shade700,
          title: const Text("Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      case DrawerItems.booking:
        return const SliderAppBar(
          appBarColor: Colors.pink,
          title: Text("Booking",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      case DrawerItems.history:
        return const SliderAppBar(
          appBarColor: Colors.orange,
          title: Text("History",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      case DrawerItems.contact:
        return const SliderAppBar(
          appBarColor: Colors.red,
          title: Text("Contact",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      case DrawerItems.logInOut:
        return const SliderAppBar(
          appBarColor: Colors.purple,
          title: Text("User Authentication",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
      default:
        return SliderAppBar(
          appBarColor: Colors.blue.shade500,
          title: const Text("Home",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        );
    }
  }
}
