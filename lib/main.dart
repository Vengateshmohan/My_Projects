import 'package:demo_project1/home_getx1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/The Perfect Coffee Cup to Start Your Day _ AI ART.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 520, 200, 0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.orange,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Text(
                  'Find the best coffee for you',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CoffeeHomePage());
                        // Add functionality for skip button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Set your desired background color here
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        //Get.toNamed(HomeGetxServices.getHomeRoute());
                        Get.to(CoffeeHomePage());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Set your desired background color here
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to simulate a delay before navigating to MyHomePage
    Future.delayed(Duration(seconds: 5), () {
      Get.to(HomePage());
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/Coffee Cups Clipart Hd PNG, Simple  Coffee Cup Element, Coffee Mug Clipart, Brown, Hot Air PNG Image For Free Download.jpg',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}




