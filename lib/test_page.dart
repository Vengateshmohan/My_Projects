// filter_button.dart
import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  List<String> filters = ['Filter 1', 'Filter 2', 'Filter 3','Filter 4','Filter 5','Filter 6'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {
            //_showFilters(context);
          },
        ),
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
                      // Handle filter button press
                      print('Filter button pressed: $filter');
                    },
                    child: Text(filter),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  // void _showFilters(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: 200,
  //         child: ListView.builder(
  //           itemCount: filters.length,
  //           itemBuilder: (context, index) {
  //             return ListTile(
  //               title: Text(filters[index]),
  //               onTap: () {
  //                 // You can implement some action here if needed
  //                 Navigator.pop(context);
  //               },
  //             );
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }
}
