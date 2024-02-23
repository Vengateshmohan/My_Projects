import 'package:flutter/material.dart';

class EspressoDetailPage extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String description;

  const EspressoDetailPage({
    required Key key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  _EspressoDetailPageState createState() => _EspressoDetailPageState();
}

class _EspressoDetailPageState extends State<EspressoDetailPage> {
  String selectedCoffeeSize = '';
  int itemCount = 0; // Initial item count

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imageUrl,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                widget.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Price: ${widget.price}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ExpansionTile(
                title: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      widget.description,
                      style: TextStyle(fontSize: 16,color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Coffee Size',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Image.asset(
                      "assets/cup.jpeg",
                      height: 40,
                    ),
                    value: 'Small',
                    groupValue: selectedCoffeeSize,
                    onChanged: (value) {
                      setState(() {
                        selectedCoffeeSize = value!;
                      });
                    },
                    activeColor: Colors.orange, // Change active color to orange

                  ),
                  SizedBox(height: 20),
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Image.asset(
                      "assets/cup.jpeg",
                      height: 60,
                    ),
                    value: 'Medium',
                    groupValue: selectedCoffeeSize,
                    onChanged: (value) {
                      setState(() {
                        selectedCoffeeSize = value!;
                      });
                    },
                    activeColor: Colors.orange, // Change active color to orange

                  ),
                  SizedBox(height: 20),
                  RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Image.asset(
                      "assets/cup.jpeg",
                      height: 90,
                    ),
                    value: 'Large',
                    groupValue: selectedCoffeeSize,
                    onChanged: (value) {
                      setState(() {
                        selectedCoffeeSize = value!;
                      });
                    },
                    activeColor: Colors.orange, // Change active color to orange
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      setState(() {
                        itemCount++; // Increment item count
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  Text(
                    '$itemCount', // Display item count
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Add to bag functionality
                    // You can implement your logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Background color
                  ),
                  child: Text(
                    'Add to bag',
                    style: TextStyle(
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
