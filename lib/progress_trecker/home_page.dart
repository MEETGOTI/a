// import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
// import 'package:fittnessapp/progress_trecker/comparison.dart';
// import 'package:fittnessapp/progress_trecker/result.dart';
// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class progress extends StatefulWidget {
//   const progress({Key? key}) : super(key: key);

//   @override
//   State<progress> createState() => _progressState();
// }

// // ignore: camel_case_types
// class _progressState extends State<progress> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         const SizedBox(
//           height: 25,
//         ),
//         Row(
//           children: [
//             Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: MaterialButton(
//                   elevation: 0.0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   // color: Colors.white,
//                   height: 30,
//                   minWidth: 15,
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) {
//                         return const bottum_page();
//                       }),
//                     );
//                   },
//                   child: const Icon(
//                     Icons.arrow_back_ios_outlined,
//                     size: 15,
//                     color: Colors.black,
//                   ),
//                 )),
//             const Padding(
//               padding: EdgeInsets.only(left: 10),
//               child: Text(
//                 'Progress Photo',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         const new_page(),
//       ]),
//     );
//   }
// }

// // ignore: camel_case_types
// class new_page extends StatefulWidget {
//   const new_page({Key? key}) : super(key: key);

//   @override
//   State<new_page> createState() => _new_pageState();
// }

// // ignore: camel_case_types
// class _new_pageState extends State<new_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 80,
//                 width: MediaQuery.of(context).size.width - 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.pink.withOpacity(0.3),
//                 ),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10, top: 10),
//                           child: Image.asset('assets/images/Vector (18).png'),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.only(left: 10, top: 20),
//                           child: Text(
//                             'Reminder!',
//                             style: TextStyle(
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10, top: 5),
//                           child: Text(
//                             'Next Photos Fall On July 08',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
//                     Column(
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.only(right: 10, top: 10),
//                           child: Icon(
//                             Icons.clear_rounded,
//                             size: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 130,
//               width: MediaQuery.of(context).size.width - 40,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.3),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20, left: 15),
//                         child: SizedBox(
//                           width: MediaQuery.of(context).size.width - 200,
//                           child: RichText(
//                             text: const TextSpan(
//                               text: 'Track Your Progress Each Month With',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500),
//                               children: [
//                                 TextSpan(
//                                   text: ' Photo',
//                                   style: TextStyle(
//                                     color: Colors.blue,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.justify,
//                             // overflow: TextOverflow.ellipsis,
//                             // maxLines: 2,
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       Column(
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.only(bottom: 20, left: 10),
//                             child: Container(
//                               height: 35,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 color: Colors.blue.withOpacity(0.5),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: const Align(
//                                 alignment: Alignment.center,
//                                 child: Text(
//                                   'Learn More',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 25, right: 15),
//                         child: Image.asset('assets/images/Frame.png'),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20),
//               child: Container(
//                 height: 45,
//                 width: MediaQuery.of(context).size.width - 40,
//                 decoration: BoxDecoration(
//                     color: Colors.blue.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(13)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(left: 15),
//                       child: Text(
//                         'Compare my Photo',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 16,
//                           color: Colors.black54,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 15),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) {
//                               return const comparisons();
//                             }),
//                           );
//                         },
//                         child: Container(
//                           height: 30,
//                           width: 80,
//                           decoration: BoxDecoration(
//                               color: Colors.purple.shade200,
//                               borderRadius: BorderRadius.circular(15)),
//                           child: Row(
//                             children: const [
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 'Compare',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//               const Padding(
//                 padding: EdgeInsets.only(left: 25),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Gallery',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         color: Colors.black,
//                         fontSize: 16),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 50),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) {
//                           return const results();
//                         }),
//                       );
//                     },
//                     child: const Text(
//                       'See more',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           color: Colors.grey,
//                           fontSize: 13),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Text('2 June'),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5834.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5836.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5835.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 25),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5837.png'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Text('5 May'),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5838.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5841.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5839.png'),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 25),
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: FittedBox(
//                         child: Image.asset('assets/images/Rectangle 5840.png'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
