// import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class comparisons extends StatefulWidget {
//   const comparisons({Key? key}) : super(key: key);

//   @override
//   State<comparisons> createState() => _comparisonsState();
// }

// // ignore: camel_case_types
// class _comparisonsState extends State<comparisons> {
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
//                 'Comparison',
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
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(right: 30, left: 30),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   color: Colors.blue.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Icon(
//                       Icons.calendar_month_rounded,
//                       color: Colors.black38,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 5),
//                     child: Text(
//                       'Select Month 1',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 14,
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   const Padding(
//                     padding: EdgeInsets.only(top: 3),
//                     child: Text(
//                       'May',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 11,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 2),
//                     child: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.arrow_forward_ios_outlined,
//                           size: 15,
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 30, left: 30),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   color: Colors.blue.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Icon(
//                       Icons.calendar_month_rounded,
//                       color: Colors.black38,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 5),
//                     child: Text(
//                       'Select Month 2',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 14,
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   const Padding(
//                     padding: EdgeInsets.only(top: 3),
//                     child: Text(
//                       'Select Month',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 11,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 2),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         size: 15,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 40),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width - 60,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.blue.withOpacity(0.7)),
//               child: const Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   'Add',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w400),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
