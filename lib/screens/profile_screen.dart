import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/profile_background.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 95,
                  backgroundColor: Colors.grey.shade400,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage:
                        const AssetImage("assets/images/avatar.jpeg"),
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white70,
                            child: Icon(CupertinoIcons.camera),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              enabled: false,
                              controller: TextEditingController(text: "Lalisa"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First name',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              enabled: false,
                              controller:
                                  TextEditingController(text: "Manoban"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last name',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              enabled: false,
                              controller: TextEditingController(
                                  text: "lalisa.manoban@gmail.com"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              enabled: false,
                              controller:
                                  TextEditingController(text: "081-123-4567"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Tel',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              enabled: false,
                              controller:
                                  TextEditingController(text: "12-12-1912"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Birthday',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.top,
                              enabled: false,
                              maxLines: 4,
                              controller: TextEditingController(text: "-"),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Address',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.edit),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
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
