import 'package:flutter/material.dart';

class TestOTP extends StatefulWidget {
  const TestOTP({Key? key}) : super(key: key);

  @override
  _TestOTPState createState() => _TestOTPState();
}

class _TestOTPState extends State<TestOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
     
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
             
              Padding(
                padding:  EdgeInsets.only(left: 20,top:40),
                child: Text('নাম্বার ভেরিফিকেশন',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 200,
               
                child: Image.asset(
                  'assets/images/payraxpress logo.png'
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'আপনাকে পাঠানো ভেরিফিকেশন কোডটি এন্টার করুন',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "(নাম্বার পরিবর্তন করুন)",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                // padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color(0xFF660000)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'NEXT',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20),
             
              Text(
                "আবার কোড পাঠান",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}