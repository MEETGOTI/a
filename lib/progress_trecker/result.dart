// import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
// import 'package:fittnessapp/progress_trecker/progress_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

// // ignore: camel_case_types
// class results extends StatefulWidget {
//   const results({Key? key}) : super(key: key);

//   @override
//   State<results> createState() => _resultsState();
// }

// // ignore: camel_case_types
// class _resultsState extends State<results> {
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
//                 'Result',
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
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 DefaultTabController(
//                   length: 2,
//                   initialIndex: 0,
//                   child: Column(
//                     children: [
//                       Container(
//                         height: 40,
//                         width: MediaQuery.of(context).size.width - 60,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.blue.withOpacity(0.1),
//                         ),
//                         child: TabBar(
//                           indicator: BoxDecoration(
//                               color: Colors.blue.withOpacity(0.4),
//                               borderRadius: BorderRadius.circular(20)),
//                           labelStyle: const TextStyle(color: Colors.white),
//                           unselectedLabelColor: Colors.black.withOpacity(0.6),
//                           tabs: const [
//                             Tab(
//                               child: Text(
//                                 'Photo',
//                                 style: TextStyle(fontSize: 16.0),
//                               ),
//                             ),
//                             Tab(
//                               child: Text(
//                                 'Statistic',
//                                 style: TextStyle(fontSize: 16.0),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 950,
//                         child: TabBarView(
//                           children: [
//                             Column(
//                               children: [
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Container(
//                                   height: 70,
//                                   width: MediaQuery.of(context).size.width - 50,
//                                   decoration: BoxDecoration(
//                                     color: Colors.blue.withOpacity(0.3),
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Column(
//                                     children: [
//                                       Row(
//                                         children: const [
//                                           Padding(
//                                             padding: EdgeInsets.only(
//                                                 left: 20, top: 10),
//                                             child: Text('Average Progress'),
//                                           ),
//                                           Spacer(),
//                                           Padding(
//                                             padding: EdgeInsets.only(
//                                                 right: 20, top: 10),
//                                             child: Text('Good'),
//                                           ),
//                                         ],
//                                       ),
//                                       const Spacer(),
//                                       Row(
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 bottom: 15, left: 10),
//                                             child: LinearPercentIndicator(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width -
//                                                   70,
//                                               animation: true,
//                                               lineHeight: 16.0,
//                                               animationDuration: 2500,
//                                               percent: 0.6,
//                                               backgroundColor:
//                                                   Colors.white.withOpacity(0.3),
//                                               progressColor:
//                                                   Colors.blue.withOpacity(0.5),
//                                               barRadius:
//                                                   const Radius.circular(10),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Row(
//                                   children: const [
//                                     Padding(
//                                       padding: EdgeInsets.only(left: 30),
//                                       child: Text(
//                                         'May',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.grey),
//                                       ),
//                                     ),
//                                     Spacer(),
//                                     Padding(
//                                       padding: EdgeInsets.only(right: 30),
//                                       child: Text(
//                                         'June',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.grey),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 const Text(
//                                   'Front Facing',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 SizedBox(
//                                   height: 150,
//                                   width: MediaQuery.of(context).size.width - 50,
//                                   child: Row(
//                                     children: [
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5834.png'),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5838.png'),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 const Text(
//                                   'Back Facing',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 SizedBox(
//                                   height: 150,
//                                   width: MediaQuery.of(context).size.width - 50,
//                                   child: Row(
//                                     children: [
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5911.png'),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5835.png'),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 const Text(
//                                   'Left Facing',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 SizedBox(
//                                   height: 150,
//                                   width: MediaQuery.of(context).size.width - 50,
//                                   child: Row(
//                                     children: [
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5836.png'),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5839.png'),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 const Text(
//                                   'Right Facing',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 SizedBox(
//                                   height: 150,
//                                   width: MediaQuery.of(context).size.width - 50,
//                                   child: Row(
//                                     children: [
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5841.png'),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       SizedBox(
//                                         height: 150,
//                                         width: 150,
//                                         child: FittedBox(
//                                           child: Image.asset(
//                                               'assets/images/Rectangle 5916.png'),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(bottom: 15),
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.of(context).push(
//                                         MaterialPageRoute(builder: (context) {
//                                           return const bottum_page();
//                                         }),
//                                       );
//                                     },
//                                     child: Container(
//                                       height: 50,
//                                       width: MediaQuery.of(context).size.width -
//                                           60,
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue.withOpacity(0.3),
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       child: const Align(
//                                           alignment: Alignment.center,
//                                           child: Text('Back to Home')),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 const Padding(
//                                   padding: EdgeInsets.only(left: 15, right: 15),
//                                   child: progress_charts(),
//                                 ),
//                                 Row(
//                                   children: const [
//                                     Padding(
//                                       padding: EdgeInsets.only(left: 30),
//                                       child: Text(
//                                         'May',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.grey),
//                                       ),
//                                     ),
//                                     Spacer(),
//                                     Padding(
//                                       padding: EdgeInsets.only(right: 30),
//                                       child: Text(
//                                         'June',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.grey),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   'Lose Weight',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       right: 30, left: 30),
//                                   child: GFProgressBar(
//                                     percentage: 0.2,
//                                     lineHeight: 20,
//                                     alignment: MainAxisAlignment.spaceBetween,
//                                     leading: const Padding(
//                                       padding: EdgeInsets.only(right: 5),
//                                       child: Text(
//                                         '20%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     trailing: const Padding(
//                                       padding: EdgeInsets.only(left: 5),
//                                       child: Text(
//                                         '80%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     backgroundColor:
//                                         Colors.blue.withOpacity(0.6),
//                                     progressBarColor:
//                                         Colors.purple.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   'Height Increase',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       right: 30, left: 30),
//                                   child: GFProgressBar(
//                                     percentage: 0.8,
//                                     lineHeight: 20,
//                                     alignment: MainAxisAlignment.spaceBetween,
//                                     leading: const Padding(
//                                       padding: EdgeInsets.only(right: 5),
//                                       child: Text(
//                                         '80%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     trailing: const Padding(
//                                       padding: EdgeInsets.only(left: 5),
//                                       child: Text(
//                                         '20%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     backgroundColor:
//                                         Colors.blue.withOpacity(0.6),
//                                     progressBarColor:
//                                         Colors.purple.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   'Muscle Mass Increase',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       right: 30, left: 30),
//                                   child: GFProgressBar(
//                                     percentage: 0.4,
//                                     lineHeight: 20,
//                                     alignment: MainAxisAlignment.spaceBetween,
//                                     leading: const Padding(
//                                       padding: EdgeInsets.only(right: 5),
//                                       child: Text(
//                                         '40%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     trailing: const Padding(
//                                       padding: EdgeInsets.only(left: 5),
//                                       child: Text(
//                                         '60%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     backgroundColor:
//                                         Colors.blue.withOpacity(0.6),
//                                     progressBarColor:
//                                         Colors.purple.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   'Abs',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black45,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       right: 30, left: 30),
//                                   child: GFProgressBar(
//                                     percentage: 0.7,
//                                     lineHeight: 20,
//                                     alignment: MainAxisAlignment.spaceBetween,
//                                     leading: const Padding(
//                                       padding: EdgeInsets.only(right: 5),
//                                       child: Text(
//                                         '70%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     trailing: const Padding(
//                                       padding: EdgeInsets.only(left: 5),
//                                       child: Text(
//                                         '30%',
//                                         style: TextStyle(
//                                             color: Colors.black45,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                     backgroundColor:
//                                         Colors.blue.withOpacity(0.6),
//                                     progressBarColor:
//                                         Colors.purple.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Padding(
//                                   padding: const EdgeInsets.only(bottom: 15),
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.of(context).push(
//                                         MaterialPageRoute(builder: (context) {
//                                           return const bottum_page();
//                                         }),
//                                       );
//                                     },
//                                     child: Container(
//                                       height: 50,
//                                       width: MediaQuery.of(context).size.width -
//                                           60,
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue.withOpacity(0.3),
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       child: const Align(
//                                           alignment: Alignment.center,
//                                           child: Text('Back to Home')),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
