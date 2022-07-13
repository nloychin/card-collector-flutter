import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
    required this.currItem,
    required this.onSelectedItem,
  }) : super(key: key);

  final DrawerItem currItem;
  final ValueChanged<DrawerItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Lalisa Manoban',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'BalsamiqSans'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ...DrawerItems.allMenu.map(buildMenuItem).toList(),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(DrawerItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
