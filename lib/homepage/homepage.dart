import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isAnimation = false;
  bool _isBallanceShown = false;
  bool _isBallance = true;
   late String _timeString;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('d-MMMM-y\nhh:mm:ss a').format(DateTime.now()).toUpperCase();
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }

  Widget _selectedExtras({ required String image,required String name,
  final  VoidCallback? press
  }){

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: press,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
          
        ),
      ),
      SizedBox(height: 10,),
      Text(name, style: TextStyle(fontSize: 12),)
    ],
  );
}

 int activeIndex=0;
   final urlImages =[
    'assets/images/payraxpress logo.png',
    'assets/images/payrasoft.png',
     'assets/images/payrasoft.png',
    
  ];

  String greeting() {
  var hour = DateTime.now().hour;
  if ((hour > 5) && (hour < 12)) {
    return 'Good Morning,';
  }
  if ((hour > 12) && (hour < 16))  {
    return 'Good Afternoon,';
  }
  else if ((hour > 16) && (hour < 20)) {
    return 'Good Evening,';
  }
  return 'Good Night,';
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        //1st part
        Container(
          padding: EdgeInsets.only(left: 20,right: 20,top: 25),
          height: 100,
          width: double.infinity,
          color: Color(0xFF660000),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children: [
              Row(
                children: [
                   Padding(padding: EdgeInsets.only(top: 30)),
        CircleAvatar(
            backgroundColor: Colors.green.shade50,
            radius: 20,
            child: Icon(
              Icons.person,
              color: Colors.pink,
              size: 28,
            )),
                  SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [SizedBox(height: 15,),
                  Text('Payra Telecom LTD.',style: TextStyle(color: Colors.white,fontSize: 15),),
                   Text('+01866-776970',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
                ],
              ),
              
             Row(
               children: [
                 Icon(Icons.notifications,color: Colors.white,),
                 SizedBox(width: 5,),
                 Icon(Icons.search,color: Colors.white,),
               ],
             ) 
             
            ],
          ),
        ),
        SizedBox(height: 10,),
      
        //2nd part
        
        Container(
          height: 82,
          padding: EdgeInsets.only(left: 30, right: 30),
          width: double.infinity,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(greeting().toString(),style: TextStyle(fontSize: 22),),
                  Text(
                 _timeString.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
              ),
                ],
              ) ,
              
              Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: InkWell(
                        onTap: changeState,
                        child: Container(
                            width: 200,
                            height: 28,
                            decoration: BoxDecoration(
                                color: Color(0xFF6660000),
                                borderRadius: BorderRadius.circular(50)),
                            child: Stack(alignment: Alignment.center, children: [
                             
                              AnimatedOpacity(
                                  opacity: _isBallanceShown ? 1 : 0,
                                  duration: Duration(milliseconds: 500),
                                  child: Text('৳ 10000.00',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14))),
        
                              /// ব্যালেন্স দেখুন
                              AnimatedOpacity(
                                  opacity: _isBallance ? 1 : 0,
                                  duration: const Duration(milliseconds: 300),
                                  child: const Text('ব্যালেন্স দেখুন',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14))),
        
                              /// Circle
                              AnimatedPositioned(
                                  duration: const Duration(milliseconds: 1100),
                                  left: _isAnimation == false ? 5 : 135,
                                  curve: Curves.fastOutSlowIn,
                                  child: Container(
                                      height: 20,
                                      width: 20,
                                      // padding: const EdgeInsets.only(bottom: 4),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(50)),
                                      child: const FittedBox(
                                          child: Text('৳',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17)))))
                            ]))),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          
                        }, style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text('বিস্তারিত >',style: TextStyle(color: Color(0xFF660000),fontSize: 12),)),
                        SizedBox(width: 15,),
                         ElevatedButton(
                        onPressed: () {
                          
                        },
                         style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text('সাপোর্ট ?',style: TextStyle(color: Color(0xFF660000),fontSize: 12),))
                    ],
                  )
                ],
              )
      
            ],
          ),
        ),
        //3rd part
         Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               margin: EdgeInsets.only(left: 10,right: 10),
               height: 250,
               child: GridView.count(padding: EdgeInsets.only(top: 20),
                 crossAxisCount: 4,
                //  crossAxisSpacing: 12,
                 mainAxisSpacing:20,
                //  childAspectRatio: 1.30,
                 children: [
                   _selectedExtras(
                     image: 'assets/images/baby-4.jpg',
                     name: 'Dress',
                     press: (){
                  // Navigator.pushNamed(context, 'signin');
                     }
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-5.jpg',
                     name: "Dress 2",
                     press: (){}
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-6.jpg',
                     name: 'Dress 3',
                     press: (){}
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-7.jpg',
                     name: 'Dress 4',
                     press: (){}
                   ),
                   
                    _selectedExtras(
                     image: 'assets/images/baby-4.jpg',
                     name: 'Dress',
                     press: (){}
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-5.jpg',
                     name: "Dress 2",
                     press: (){}
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-6.jpg',
                     name: 'Dress 3',
                     press: (){}
                   ),
                   _selectedExtras(
                     image: 'assets/images/baby-7.jpg',
                     name: 'Dress 4',
                     press: (){}
                   ),
      
                 ],
                 ),
                 
             ),
              Container(padding: EdgeInsets.only(left:38),
          child: Text('জনপ্রিয় সেবা',style: TextStyle(
            fontSize: 15, 
          ),textAlign: TextAlign.start,),
        ) ,
          Container(margin: EdgeInsets.only(left: 10,right: 10),
           height: 150,
           child: GridView.count(padding: EdgeInsets.only(top: 20),
             crossAxisCount: 4,
            //  crossAxisSpacing: 12,
             mainAxisSpacing:30,
            //  childAspectRatio: 1.30,
             children: [
               _selectedExtras(
                 image: 'assets/images/baby-4.jpg',
                 name: 'Dress',
                 press: (){}
               ),
               _selectedExtras(
                 image: 'assets/images/baby-5.jpg',
                 name: "Dress 2",
                 press: (){}
               ),
               _selectedExtras(
                 image: 'assets/images/baby-6.jpg',
                 name: 'Dress 3',
                 press: (){}
               ),
               _selectedExtras(
                 image: 'assets/images/baby-7.jpg',
                 name: 'Dress 4',
                 press: (){}
               ),
             ],
             ),
         ),
           ],
         ),

         // 4th part
      
          Container(
            width: double.infinity,
            child: CarouselSlider.builder(itemCount: urlImages.length,
                       itemBuilder: (context, index, realIndex) {
                         final urlImage = urlImages[index];
                         return buildImage(urlImage,index);
                       }, 
                       options: CarouselOptions(                     
                         autoPlay: true,   
                         height: 150,               
                       
                         autoPlayInterval: Duration(seconds: 5),
                         onPageChanged: (index, reason) => 
                         setState(()=> activeIndex =index),
                         )
                         ),
          ),
                       const SizedBox(height: 10),
                       Center(
                         child: DotsIndicator(
                        dotsCount: urlImages.length,
                         position: activeIndex.toDouble(),
                           decorator: DotsDecorator(
                         size: const Size.square(9.0),
                           activeSize: const Size(18.0, 9.0),
                           activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                           ),
                          ),
                           ),  
      
                           //5th part
      
                           Container(padding: EdgeInsets.only(left: 30,right: 30),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('sManager সংবাদ',style: TextStyle(color: Color(0xFF660000),fontSize: 15)),
                                 ElevatedButton(
                                   onPressed: () {
                                     
                                   },
                                   style: ElevatedButton.styleFrom(
                                     primary: Colors.white
                                   ),
                                   child: Text('সব দেখুন',style: TextStyle(color: Color(0xFF660000),fontSize: 15),)
                                   )
                               ],
                             ),
                           ),
                           SizedBox(height: 10,),
      
                           //6th part
      
                           Deshboard(
                             image: 'assets/images/baby-4.jpg',
                             title: 'ড্যাসবোর্ড কী? কেন ও কীভাবে এই\nফিচারটি ব্যবহার করবেন?',
                             subtitle: 'টিউটোরিয়াল',
                              press: (){
                             Navigator.pushNamed(context, 'signin');
                              },
                           ),
                           SizedBox(height: 10,),
                           Deshboard(
                             image: 'assets/images/baby-5.jpg',
                             title: 'হিসাব খাতা কী? কেন ও কীভাবে এই\nফিচারটি ব্যবহার করবেন?',
                             subtitle: 'টিউটোরিয়াল',
                              press: (){},
                           ),
                           SizedBox(height: 10,),
                           Deshboard(
                             image: 'assets/images/baby-6.jpg',
                             title: 'অনলাইন স্টোর কী? কেন ও কীভাবে\nএই ফিচারটি ব্যবহার করবেন?',
                             subtitle: 'টিউটোরিয়াল',
                              press: (){},
                           ),
                           SizedBox(height: 20,)
          ]
        ),
      ),
    );
  }
  void changeState() async {
    _isAnimation = true;
    _isBallance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
        () => setState(() => _isBallanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBallanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
        () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBallance = true));
  }
}

class Deshboard extends StatelessWidget {
  const Deshboard({
    Key? key,required this.image,required this.title,required this.subtitle,required this.press,
   
  }) : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        height: 100,
        width: double.infinity,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color: Colors.grey.withOpacity(0.3),
        ),
        child: Row(
          children: [SizedBox(width: 10,),
            Image.asset(image,height: 80,width: 80,),
            SizedBox(width: 10,),
            Container(padding: EdgeInsets.only(top:15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                  style: TextStyle(
                    fontSize: 15
                  ),),
                  SizedBox(height: 5,),
                  Text(subtitle, style: TextStyle(
                    fontSize: 15,color: Color(0xFF660000)
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget buildImage( String urlImage, int index)=> Container(
  width: double.infinity,
  margin: EdgeInsets.only(left: 5,right: 5),
  padding: EdgeInsets.only(left: 10,right: 20),
  color: Colors.grey,
  
  child: Image.asset(
    '${urlImage}',
    // fit: BoxFit.cover,
  ), 
  
  
 
);


