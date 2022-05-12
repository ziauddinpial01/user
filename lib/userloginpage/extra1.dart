// import 'package:flutter/material.dart';

// class CustomAppBar extends StatefulWidget {
//   CustomAppBar({Key? key}) : super(key: key);

//   @override
//   _CustomAppBarState createState() => _CustomAppBarState();
// }

// class _CustomAppBarState extends State<CustomAppBar> {
//   bool _isAnimation = false;
//   bool _isBallanceShown = false;
//   bool _isBallance = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Container(
//         width: double.infinity,
//         height: 120,
//         color: Colors.pink,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//           SizedBox(
//               width: 10,
//             ),
//             userLogo(),
//             SizedBox(
//               width: 20,
//             ),
//              bkashLogo(),
//             SizedBox(
//               width: 20,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
              
//               children: [
//                 ///User Name
             
//                 SizedBox(
//                   height: 15,
//                 ),
      
//                 ///Button
//                 Padding(
//                   padding: const EdgeInsets.only(top: 50),
//                   child: InkWell(
//                       onTap: changeState,
//                       child: Container(
//                           width: 160,
//                           height: 28,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(50)),
//                           child: Stack(alignment: Alignment.center, children: [
//                             ///৳ 50.00
//                             AnimatedOpacity(
//                                 opacity: _isBallanceShown ? 1 : 0,
//                                 duration: Duration(milliseconds: 500),
//                                 child: Text('৳ 1000000000000.00',
//                                     style: TextStyle(
//                                         color: Colors.pink, fontSize: 14))),
      
//                             /// ব্যালেন্স দেখুন
//                             AnimatedOpacity(
//                                 opacity: _isBallance ? 1 : 0,
//                                 duration: const Duration(milliseconds: 300),
//                                 child: const Text('ব্যালেন্স দেখুন',
//                                     style: TextStyle(
//                                         color: Colors.pink, fontSize: 14))),
      
//                             /// Circle
//                             AnimatedPositioned(
//                                 duration: const Duration(milliseconds: 1100),
//                                 left: _isAnimation == false ? 5 : 135,
//                                 curve: Curves.fastOutSlowIn,
//                                 child: Container(
//                                     height: 20,
//                                     width: 20,
//                                     // padding: const EdgeInsets.only(bottom: 4),
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                         color: Colors.pink,
//                                         borderRadius: BorderRadius.circular(50)),
//                                     child: const FittedBox(
//                                         child: Text('৳',
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 17)))))
//                           ]))),
//                 )
//               ],
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             //Bkash Logo
           
//           ],
//         ),
//       ),
//     );
//   }

//   bkashLogo() => 
//   Padding(
//     padding: const EdgeInsets.only(top: 50),
//     child: SizedBox(width: 70,
    
//      child: Image.asset('assets/images/payraxpress logo.png')),
//   );

//   Widget userLogo() => Column(
//     children: [
//       Padding(padding: EdgeInsets.only(top: 50)),
//       CircleAvatar(
//           backgroundColor: Colors.green.shade50,
//           radius: 20,
//           child: Icon(
//             Icons.person,
//             color: Colors.pink,
//             size: 28,
//           )),
//            Text(
//                   'Ziauddin Pial',
//                   style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w300),
//                 ),

                
//     ],
//   );
      

//   void changeState() async {
//     _isAnimation = true;
//     _isBallance = false;
//     setState(() {});

//     await Future.delayed(Duration(milliseconds: 800),
//         () => setState(() => _isBallanceShown = true));
//     await Future.delayed(
//         Duration(seconds: 3), () => setState(() => _isBallanceShown = false));
//     await Future.delayed(Duration(milliseconds: 200),
//         () => setState(() => _isAnimation = false));
//     await Future.delayed(
//         Duration(milliseconds: 800), () => setState(() => _isBallance = true));
//   }


// }



// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter/material.dart';




// class MySlider extends StatefulWidget {
//   @override
//   _MySliderState createState() => _MySliderState();
// }

// class _MySliderState extends State<MySlider> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Carousel Slider'),
//       ),
//       body: Container(
//         child: Center(
//             child: ListView(
//           children: [
//             SizedBox(
//               height: 200.0,
//               width: double.infinity,
//               child: Carousel(
//                 dotSize: 6.0,
//                 dotSpacing: 15.0,
//                 dotPosition: DotPosition.bottomCenter,
//                 images: [
//                   Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/images/5.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/images/6.jpg', fit: BoxFit.cover),
//                 ],
//               ),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }