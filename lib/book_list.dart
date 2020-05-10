// import 'package:flutter/material.dart';

// class Book_List extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: bgGradient(),
//       child: Stack(
//         children: <Widget>[
//           ListView(
//             children: <Widget>[
//               BookListView(
//                 title: "For PotterHeads",
//                 books: [
//                   'hp1.jpg',
//                 ],
//               ),
//               SizedBox(height: 20),
//               BookListView(
//                 title: "BestSellers",
//                 books: [
//                   'alchemist.jpg',
//                   'fault.jpg',
//                   'finding_alaska.jpg',
//                   'Sherlock_Holmes.jpg'
//                 ],
//               ),
//               SizedBox(height: 20),
//               BookListView(
//                 title: "More to Read",
//                 books: ['subtle.jpg', 'goosebumps.jpg'],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BookListView extends StatelessWidget {
//   final String title;
//   final List<String> books;

//   const BookListView({this.title, this.books});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.only(top: 16),
//           child: Text(
//             title,
//             style: Theme.of(context).textTheme.subtitle2,
//           ),
//         ),
//         Container(
//           height: 190,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: books.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return BookCard(
//                   file: books[index],
//                 );
//               }),
//         )
//       ],
//     );
//   }
// }

// class BookCard extends StatelessWidget {
//   final String file;
//   static const filePath = 'assets/images/';

//   const BookCard({this.file});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.red,
//         boxShadow: [
//           BoxShadow(
//               color: Colors.black,
//               spreadRadius: 1,
//               offset: Offset(4, 5),
//               blurRadius: 5),
//         ],
//       ),
//       child: Image.asset(filePath + file),
//     );
//   }
// }

// BoxDecoration bgGradient() {
//   return BoxDecoration(
//       gradient: LinearGradient(
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           tileMode: TileMode.mirror,
//           colors: [Color(0xE0EAFC), Color(0xCFDEF3)]));
// }

// // class CustomBanner extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: SafeArea(
// //         child: Row(
// //           children: <Widget>[
// //             Expanded(
// //               child: Text(
// //                 'Novel App',
// //                 style: Theme.of(context).textTheme.headline6,
// //               ),
// //             ),
// //             Row(
// //               children: <Widget>[
// //                 Icon(
// //                   Icons.search,
// //                   size: 35,
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
