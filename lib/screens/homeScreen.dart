import 'package:backb/model/data_model.dart';
import 'package:backb/screens/restaurants.dart';
import 'package:backb/screens/topBar.dart';
import 'package:backb/widgets/bottombar.dart';
import 'package:backb/screens/categories.dart';
import 'package:backb/widgets/carousel.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Carousel(),
                  TopBar(),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Categories(),
              Restaurants(),
            ],
          ),
        ),
      ),
    );
  }
}
