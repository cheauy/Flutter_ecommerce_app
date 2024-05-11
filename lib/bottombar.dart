import 'package:ecommerce_application/cart_screen.dart';
import 'package:ecommerce_application/feed_screen.dart';
import 'package:ecommerce_application/home_screen.dart';
import 'package:ecommerce_application/message_screen.dart';
import 'package:ecommerce_application/profile_screen.dart';
import 'package:flutter/material.dart';

class BottombarScreen extends StatefulWidget {
  const BottombarScreen({super.key});

  @override
  State<BottombarScreen> createState() => _BottombarScreenState();
}

class _BottombarScreenState extends State<BottombarScreen> {
  int currenIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    const FeedScreen(),
    const CartScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[currenIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: SizedBox(
          height: 70,
          child: ClipRRect(
            // clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
                currentIndex: currenIndex,
                onTap: (value) {
                  setState(() {
                    currenIndex = value;
                  });
                },
                //  selectedItemColor: Colors.grey,

                // Set selected item color
                unselectedItemColor: Colors.grey, // Set unselected item color
                // backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.feed), label: 'Feed'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.card_travel), label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message), label: 'Message'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Me'),
                ]),
          ),
        ),
      ),
    );
  }
}
