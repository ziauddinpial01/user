import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({ Key? key }) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
                margin: EdgeInsets.only(top: 120),
                
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage('assets/images/payraxpress logo.png')),
                ),
              ),
              SizedBox(height: 70,),
             Text(
                    'পাসওয়ার্ড ভুলে গেছেন?',
                    style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "ই-মেইল দিন",
                          hintStyle: TextStyle(
                           fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
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