import 'package:flutter/material.dart';
import 'package:teranga/screens/google_map_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = "home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Teranga",
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const ListTile(
                title: Text(
                  "Abdallah Mabrouck",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "mabrouck32@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.perm_identity,
                    color: Colors.black87,
                  ),
                ),
              ),
              Divider(
                height: 34,
                thickness: 1,
                color: Colors.white.withOpacity(0.3),
                indent: 32,
                endIndent: 32,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "My Orders",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "My Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "Customer Support",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.message_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Divider(
                height: 44,
                thickness: 0.5,
                color: Colors.white.withOpacity(0.3),
                indent: 32,
                endIndent: 32,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: const MapScreen(),
    );
  }
}
