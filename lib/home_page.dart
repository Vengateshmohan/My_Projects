
import 'package:demo_project1/toordercoffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'other_navi_page.dart';

class CoffeeHomePage extends StatelessWidget {
  const CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CoffeeHomePage1(),
    );
  }
}
class CoffeeHomePage1 extends StatefulWidget {
  const CoffeeHomePage1({super.key});

  @override
  State<CoffeeHomePage1> createState() => _CoffeeHomePage1State();
}

class _CoffeeHomePage1State extends State<CoffeeHomePage1> {
  final List<String> filters = ['Espresso', 'Cappuccino', 'Latte',"Coffee"];

  int _currentIndex = 0;

  final List<Widget> _tabs = [
    CoffeeHomePage1(),
    HeartPage(), // Create HeartPage widget
    OrdersPage(), // Create OrdersPage widget
    ProfilePage(), // Create ProfilePage widget
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

    ),
      body:
      Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ee666e71-6c11-4ea9-91eb-bf51c05c6824.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text Content
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child:TextField(
                        style: TextStyle(color: Colors.white), // Set text color to white
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.orange), // Adjust hint color
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange), // Set border color to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange), // Set border color to black
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0), // Add some spacing between search field and profile image
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/Download Blank Default Pfp Wallpaper _ Wallpapers_com.jpg'),
                      radius: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                child: Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  'Grab your first coffee in this morning',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  <Widget>[
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_list,color: Colors.white,),tooltip: 'Filter',),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: filters.map((filter) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.find<FilterController>().setFilter(filter);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange, // Set your desired background color here
                              ),
                              child: Text(filter,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),

            //  SizedBox(height: 20.0),
              Expanded(
                child: GetX<FilterController>(
                  init: FilterController(),
                  builder: (controller) {
                    return controller.selectedFilter.isNotEmpty
                        ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: _buildBoxes(controller.selectedFilter.value),
                      ),
                    )
                        : Container(); // Empty container if no filter is selected
                  },
                ),
              ),

              Column(children: [

              ],)

            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Text('Home', style: TextStyle(color: Colors.orange))
                : Icon(Icons.home, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Text('Favorite', style: TextStyle(color: Colors.orange))
                : Icon(Icons.favorite, color: Colors.orange),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Text('Orders', style: TextStyle(color: Colors.orange))
                : Icon(Icons.shopping_cart, color: Colors.orange),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? Text('Profile', style: TextStyle(color: Colors.orange))
                : Icon(Icons.person, color: Colors.orange),
            label: 'Profile',
          ),
        ],
      ),

    );

  }
}

class FilterController extends GetxController {
  RxString selectedFilter = ''.obs;



  void setFilter(String filter) {
    selectedFilter.value = filter;
  }
}

List<Widget> _buildBoxes(String selectedFilter) {
  List<Widget> boxes = [];

  if (selectedFilter == 'Espresso') {
    // Add two types of Espresso boxes
    boxes.add(_buildBox('Espresso with Milk', '4.5', '\$5.99', 'assets/nice.jpeg','This is a description of the Espresso with Milk. ' +
        'It contains details about its origin, flavor, and preparation process.',));
    boxes.add(_buildBox('Espresso with Cream', '4.0', '\$6.99', 'assets/Almond Joy Coffee Creamer.jpeg','This is a description of the Espresso with Milk. ' +
        'It contains details about its origin, flavor, and preparation process.',));
  } else if (selectedFilter == 'Cappuccino') {
    // Add three types of Cappuccino boxes
    boxes.add(_buildBox('Cappuccino', '4.3', '\$4.99', 'assets/cappuccino1.jpeg',"A classic cappuccino prepared with equal parts of espresso, steamed milk, and milk foam. The rich espresso blends harmoniously with the velvety milk, creating a creamy texture with a bold coffee flavor. Topped with a light dusting of cocoa or cinnamon for a delightful finish."));
    boxes.add(_buildBox('Caramel Cappuccino', '4.2', '\$5.49', 'assets/cappuccino2.jpeg',"Indulge in the decadent sweetness of a caramel cappuccino. Crafted with freshly brewed espresso, creamy steamed milk, and a generous swirl of smooth caramel syrup. The caramel infusion adds a delightful sweetness to the rich coffee notes, creating a luxurious and comforting beverage perfect for any time of day."));
    boxes.add(_buildBox('Hazelnut Cappuccino', '4.1', '\$5.99', 'assets/cappuccino3.jpeg',"Experience the nutty richness of a hazelnut cappuccino. Made with freshly brewed espresso, steamed milk, and a hint of velvety hazelnut flavoring. The aromatic essence of hazelnut complements the robust coffee flavors, offering a warm and satisfying drink that delights the senses with every sip."));
  }

  return boxes;
}


Widget _buildBox(String title, String rating, String price, String imageUrl,String description) {
  return GestureDetector(
    onTap: () {
      Get.to(() => EspressoDetailPage(
        key: ValueKey('espresso_detail_page'), // Provide a key here
        title: title,
        price: price,
        imageUrl: imageUrl,
        description: description,
        rating:rating,
      ));

    },
    child: Container(
      width: 148, // Adjust the width as needed
      height: 188, // Adjust the height as needed
      padding: EdgeInsets.all(8.0), // Adjust padding as needed
      margin: EdgeInsets.all(8.0), // Adjust margin as needed
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 80, // Adjust the image height as needed
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2, // Adjust max lines as needed
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 16.0), // Adjust icon size as needed
              Text(rating, style: TextStyle(fontSize: 12)), // Adjust font size as needed
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.add, size: 16.0), // Adjust icon size as needed
                onPressed: () {
                  // Implement add to cart functionality
                  Get.to(() => EspressoDetailPage(
                    key: ValueKey('espresso_detail_page'), // Provide a key here
                    title: title,
                    price: price,
                    imageUrl: imageUrl,
                    description: description, rating: rating,
                  ));
                },
              ),
            ],
          ),
          Column(children: [

          ],)
        ],
      ),
    ),
  );
}
