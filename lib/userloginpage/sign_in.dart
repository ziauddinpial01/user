import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage('assets/images/payraxpress logo.png')),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Text(
                  'আপনার একাউন্টে লগ ইন করুন',
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
                      hintText: "ই-মেইল দিন",
                      hintStyle: TextStyle(
                        fontSize: 12
                          ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                      hintText: "পাসওয়ার্ড দিন ",
                      hintStyle: TextStyle(
                         fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                  child: Text('লগিন করুন'
                
                    )
                  ),
              ),
               SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                Navigator.pushNamed(context, 'pass');
                },
                child: Text(
                  "পাসওয়ার্ড ভুলে গেছেন?",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF660000),
             ),
                  textAlign: TextAlign.center,
                ),
              ),
               SizedBox(
                height: 10,
              ),
              Text(
                  'এখনও রেজিষ্ট্রেশন করেননি?',
                  style: TextStyle(fontSize: 15, ),
                  textAlign: TextAlign.center,
                ),
                 SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, 'signup');
                },
                child: Text(
                  "রেজিষ্ট্রেশন করুন ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF660000),
                      //  fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
               SizedBox(
                height: 200,
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