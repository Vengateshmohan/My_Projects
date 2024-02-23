// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // class FilterButton2 extends StatelessWidget {
// //   final List<String> filters = ['Espresso', 'Cappuccino', 'Latte',];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: <Widget>[
// //           Row(
// //             children: <Widget>[
// //               IconButton(
// //                 icon: Icon(Icons.filter_list),
// //                 onPressed: () {
// //                   // Get.bottomSheet(
// //                   //   Container(
// //                   //     height: 200,
// //                   //     child: ListView.builder(
// //                   //       itemCount: filters.length,
// //                   //       itemBuilder: (context, index) {
// //                   //         return ListTile(
// //                   //           title: Text(filters[index]),
// //                   //           onTap: () {
// //                   //             Get.back();
// //                   //             Get.find<FilterController>().setFilter(filters[index]);
// //                   //           },
// //                   //         );
// //                   //       },
// //                   //     ),
// //                   //   ),
// //                   // );
// //                 },
// //               ),
// //               SizedBox(width: 10.0),
// //               Expanded(
// //                 child: SingleChildScrollView(
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     children: filters.map((filter) {
// //                       return Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 4.0),
// //                         child: ElevatedButton(
// //                           onPressed: () {
// //                            // Get.find<FilterController>().setFilter(filter);
// //                           },
// //                           child: Text(filter),
// //                         ),
// //                       );
// //                     }).toList(),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           SizedBox(height: 20.0),
// //           // GetX<FilterController>(
// //           //   init: FilterController(),
// //           //   builder: (controller) {
// //           //     return controller.selectedFilter.isNotEmpty
// //           //         ? Expanded(
// //           //       child: Center(
// //           //         child: Text(
// //           //           'Content for ${controller.selectedFilter}',
// //           //           style: TextStyle(fontSize: 20.0),
// //           //         ),
// //           //       ),
// //           //     )
// //           //         : Container(); // Empty container if no filter is selected
// //           //   },
// //           // ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class FilterController extends GetxController {
// //   RxString selectedFilter = ''.obs;
// //
// //   void setFilter(String filter) {
// //     selectedFilter.value = filter;
// //   }
// // }
// //
//
//
// ///
//
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // class FilterButton2 extends StatelessWidget {
// //   final List<String> filters = ['Espresso', 'Cappuccino', 'Latte'];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: <Widget>[
// //           Row(
// //             children: <Widget>[
// //               IconButton(
// //                 icon: Icon(Icons.filter_list),
// //                 onPressed: () {
// //                   Get.bottomSheet(
// //                     Container(
// //                       height: 200,
// //                       child: ListView.builder(
// //                         itemCount: filters.length,
// //                         itemBuilder: (context, index) {
// //                           return ListTile(
// //                             title: Text(filters[index]),
// //                             onTap: () {
// //                               Get.back();
// //                               Get.find<FilterController>().setFilter(filters[index]);
// //                             },
// //                           );
// //                         },
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //               SizedBox(width: 10.0),
// //               Expanded(
// //                 child: SingleChildScrollView(
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     children: filters.map((filter) {
// //                       return Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 4.0),
// //                         child: ElevatedButton(
// //                           onPressed: () {
// //                             Get.find<FilterController>().setFilter(filter);
// //                           },
// //                           child: Text(filter),
// //                         ),
// //                       );
// //                     }).toList(),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           SizedBox(height: 20.0),
// //           Expanded(
// //             child: GetX<FilterController>(
// //               init: FilterController(),
// //               builder: (controller) {
// //                 return controller.selectedFilter.isNotEmpty
// //                     ? Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     // Box image first
// //                     Image.network(
// //                       'https://example.com/${controller.selectedFilter.value.toLowerCase()}.jpg',
// //                       width: 200,
// //                       height: 200,
// //                     ),
// //                     SizedBox(height: 10), // Adding some space between image and text
// //
// //                     // First Row
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text(
// //                               controller.selectedFilter.value,
// //                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                             ),
// //                             Text(
// //                               'With milk',
// //                               style: TextStyle(fontSize: 14),
// //                             ),
// //                           ],
// //                         ),
// //                         Row(
// //                           children: [
// //                             Icon(Icons.star, color: Colors.yellow),
// //                             Text('4.5'),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(height: 10), // Adding space between rows
// //
// //                     // Second Row
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(
// //                           '\$5.99',
// //                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                         ),
// //                         IconButton(
// //                           icon: Icon(Icons.add),
// //                           onPressed: () {
// //                             // Implement add to cart functionality
// //                           },
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 )
// //                     : Container(); // Empty container if no filter is selected
// //               },
// //             ),
// //           ),
// //
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class FilterController extends GetxController {
// //   RxString selectedFilter = ''.obs;
// //   String get selectedFilterValue => selectedFilter.value;
// //
// //   void setFilter(String filter) {
// //     selectedFilter.value = filter;
// //   }
// //
// // }
//
//
// ///
// ///
// ///
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class FilterButton2 extends StatelessWidget {
//   final List<String> filters = ['Espresso', 'Cappuccino', 'Latte'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.filter_list),
//                 onPressed: () {
//                   Get.bottomSheet(
//                     Container(
//                       height: 200,
//                       child: ListView.builder(
//                         itemCount: filters.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text(filters[index]),
//                             onTap: () {
//                               Get.back();
//                               Get.find<FilterController>().setFilter(filters[index]);
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               SizedBox(width: 10.0),
//               Expanded(
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: filters.map((filter) {
//                       return Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 4.0),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Get.find<FilterController>().setFilter(filter);
//                           },
//                           child: Text(filter),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Expanded(
//             child: GetX<FilterController>(
//               init: FilterController(),
//               builder: (controller) {
//                 return controller.selectedFilter.isNotEmpty
//                     ? SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         children: _buildBoxes(controller.selectedFilter.value),
//                                       ),
//                     )
//                     : Container(); // Empty container if no filter is selected
//               },
//             ),
//           ),
//
//           // Expanded(
//           //   child: GetX<FilterController>(
//           //     init: FilterController(),
//           //     builder: (controller) {
//           //       return controller.selectedFilter.isNotEmpty
//           //           ? Container(
//           //         width: 300,
//           //         height: 50,
//           //         padding: EdgeInsets.all(16.0), // Adjust padding as needed
//           //         decoration: BoxDecoration(
//           //           border: Border.all(
//           //             color: Colors.grey,
//           //             width: 1.0,
//           //           ),
//           //           borderRadius: BorderRadius.circular(8.0),
//           //         ),
//           //         child: Column(
//           //           crossAxisAlignment: CrossAxisAlignment.start,
//           //           children: [
//           //             SizedBox(
//           //               width: double.infinity,
//           //               height: 150,
//           //               child: Image.asset(
//           //                 controller.selectedFilter.value == 'Espresso'
//           //                     ? controller.espressoImageUrl
//           //                     : controller.defaultImageUrl,
//           //                 fit: BoxFit.cover,
//           //               ),
//           //             ),
//           //             SizedBox(height: 10),
//           //             Text(
//           //               controller.selectedFilter.value,
//           //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           //               overflow: TextOverflow.ellipsis,
//           //               maxLines: 1,
//           //             ),
//           //             Text(
//           //               'With ${controller.selectedFilter.value == 'Espresso' ? 'milk' : 'cream'}',
//           //               style: TextStyle(fontSize: 14),
//           //               overflow: TextOverflow.ellipsis,
//           //               maxLines: 1,
//           //             ),
//           //             Row(
//           //               children: [
//           //                 Icon(Icons.star, color: Colors.yellow),
//           //                 Text(controller.selectedFilter.value == 'Espresso' ? '4.5' : '4.0'),
//           //               ],
//           //             ),
//           //             SizedBox(height: 10),
//           //             Row(
//           //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //               children: [
//           //                 Text(
//           //                   '\$${controller.selectedFilter.value == 'Espresso' ? '5.99' : '6.99'}',
//           //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           //                 ),
//           //                 IconButton(
//           //                   icon: Icon(Icons.add),
//           //                   onPressed: () {
//           //                     // Implement add to cart functionality
//           //                   },
//           //                 ),
//           //               ],
//           //             ),
//           //           ],
//           //         ),
//           //       )
//           //           : Container(); // Empty container if no filter is selected
//           //     },
//           //   ),
//           // ),
//
//
//         ],
//       ),
//     );
//   }
// }
//
// class FilterController extends GetxController {
//   RxString selectedFilter = ''.obs;
//
//   String espressoImageUrl = 'assets/nice.jpeg';
//   String defaultImageUrl = 'assets/Almond Joy Coffee Creamer.jpeg';
//
//   void setFilter(String filter) {
//     selectedFilter.value = filter;
//   }
// }
//
// List<Widget> _buildBoxes(String selectedFilter) {
//   List<Widget> boxes = [];
//
//   if (selectedFilter == 'Espresso') {
//     // Add two types of Espresso boxes
//     boxes.add(_buildBox('Espresso with Milk', '4.5', '\$5.99', '/nice.jpeg'));
//     boxes.add(_buildBox('Espresso with Cream', '4.0', '\$6.99', '/Almond Joy Coffee Creamer.jpeg'));
//   } else if (selectedFilter == 'Cappuccino') {
//     // Add three types of Cappuccino boxes
//     boxes.add(_buildBox('Cappuccino Type 1', '4.3', '\$4.99', '/coffee3.jpg'));
//     boxes.add(_buildBox('Cappuccino Type 2', '4.2', '\$5.49', 'cappuccino_type2.jpg'));
//     boxes.add(_buildBox('Cappuccino Type 3', '4.1', '\$5.99', 'cappuccino_type3.jpg'));
//   }
//
//   return boxes;
// }
//
// // Widget _buildBox(String title, String rating, String price, String imageUrl) {
// //   return Container(
// //     width: 100,
// //     height: 200,
// //     padding: EdgeInsets.all(16.0), // Adjust padding as needed
// //     decoration: BoxDecoration(
// //       border: Border.all(
// //         color: Colors.grey,
// //         width: 1.0,
// //       ),
// //       borderRadius: BorderRadius.circular(8.0),
// //     ),
// //     child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         SizedBox(
// //           width: double.infinity,
// //           height: 100,
// //           child: Image.asset(
// //             'assets/$imageUrl',
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         SizedBox(height: 10),
// //         Text(
// //           title,
// //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //           overflow: TextOverflow.ellipsis,
// //           maxLines: 1,
// //         ),
// //         Row(
// //           children: [
// //             Icon(Icons.star, color: Colors.yellow),
// //             Text(rating),
// //           ],
// //         ),
// //         SizedBox(height: 10),
// //         Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: [
// //             Text(
// //               price,
// //               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //             ),
// //             IconButton(
// //               icon: Icon(Icons.add),
// //               onPressed: () {
// //                 // Implement add to cart functionality
// //               },
// //             ),
// //           ],
// //         ),
// //       ],
// //     ),
// //   );
// // }
//
// Widget _buildBox(String title, String rating, String price, String imageUrl) {
//   return Container(
//     width: 148, // Adjust the width as needed
//     height: 188, // Adjust the height as needed
//     padding: EdgeInsets.all(8.0), // Adjust padding as needed
//     margin: EdgeInsets.all(8.0), // Adjust margin as needed
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Colors.grey,
//         width: 1.0,
//       ),
//       borderRadius: BorderRadius.circular(8.0),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: double.infinity,
//           height: 80, // Adjust the image height as needed
//           child: Image.asset(
//             'assets/$imageUrl',
//             fit: BoxFit.cover,
//           ),
//         ),
//         SizedBox(height: 4.0),
//         Text(
//           title,
//           style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//           overflow: TextOverflow.ellipsis,
//           maxLines: 2, // Adjust max lines as needed
//         ),
//         Row(
//           children: [
//             Icon(Icons.star, color: Colors.yellow, size: 16.0), // Adjust icon size as needed
//             Text(rating, style: TextStyle(fontSize: 12)), // Adjust font size as needed
//           ],
//         ),
//         SizedBox(height: 4.0),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               price,
//               style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//             ),
//             IconButton(
//               icon: Icon(Icons.add, size: 16.0), // Adjust icon size as needed
//               onPressed: () {
//                 // Implement add to cart functionality
//               },
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
