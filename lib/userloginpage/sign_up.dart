import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? image;

Future pickImage() async{
 try{
   final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if(image ==null ) return;

  final imageTemporary = File(image.path);
 setState(() {
   this.image = imageTemporary;
 }); 
 } on PlatformException catch (e) {
   print('Failed to pick image: $e');
 }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage('assets/images/payraxpress logo.png')),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Text(
                  ' রেজিষ্ট্রেশন করুন',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
             ),
              SizedBox(height: 20,),
      
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "মার্চেন্ট নাম:",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                      border: OutlineInputBorder(),  
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
              SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "শপ নাম:",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),

               SizedBox(height: 20,), 
             
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                height: 50,
                
                width: MediaQuery.of(context).size.width,
                child: image !=null
           ? Image.file(
             image!,
             width: 100,
             height: 100,
             fit: BoxFit.cover,
           ):
            ElevatedButton(
              onPressed: () => pickImage(),
                   style: ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            // padding: EdgeInsets.all(10),

      
           
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), 
          ),
           
          ),

               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('লগো:',style: TextStyle(
                     fontSize: 12,color: Colors.black,
                   )),
                   Icon(Icons.photo)
                 ],
               )), 
               
                    
              ),
               SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "ঠিকানা: ",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      // contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
               SizedBox(height: 20,), Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "মোবাইল নাম্বার:",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
               SizedBox(height: 20,), Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "ই-মেইল:",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
                   SizedBox(height: 20,),
 
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "পাসওয়ার্ড:",
                      hintStyle: TextStyle(
                         fontSize: 12),
                      
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
                SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "কনফার্ম পাসওয়ার্ড: ",
                      hintStyle: TextStyle(
                         fontSize: 12),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
                
              SizedBox(height: 20,), Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "রেফারেন্স (যদি থাকে): ",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      // contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey),
                      ),
                    )),
              ),
             
               
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                
                padding: EdgeInsets.only(left: 100,right: 100),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                    style: ElevatedButton.styleFrom(
            primary: Color(0xFF660000),
            padding: EdgeInsets.all(10),
      
            textStyle: TextStyle(
                fontSize: 20,
                
            ),
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), 
          ),
           
          ),
                  child: Text('জমা দিন '
                
                    )
                  ),
              ),
            
              
               SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text('Powerd By:', style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF660000),
                      //  fontWeight: FontWeight.bold,
                      ),),
                  Container(
                  width: 150,
                  height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/payrasoft.png'))
                    ),
      
                  )
                ],
              )
               
          ],
        ),
      ),
    );
  }
}