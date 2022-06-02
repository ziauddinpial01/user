import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
//import package file


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // selector

  late bool _isSelected;

  late List<CompanyWidget> _companies;

  late List<String> _filters;

  @override
  void initState() {
    super.initState();

     _isSelected = false;
    _filters = <String>[];
    _companies = <CompanyWidget>[
       CompanyWidget('CEO'),
       CompanyWidget('Director'),
       CompanyWidget('Manager'),
       CompanyWidget('Team Leader'),
       CompanyWidget('Employee'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 

       appBar: AppBar(
         title: Text("Phone Country Code & Selector"), //appbar title
         backgroundColor: Colors.redAccent, //appbar color
       ),
       body: Column(
         children: [
           Container( 
               padding: EdgeInsets.all(20),
               child: Column(children: <Widget>[
                    Container( 
                      child:IntlPhoneField(
                            decoration: InputDecoration( 
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                ),
                            ),
                            initialCountryCode: 'NP',
                            onChanged: (phone) {
                              
                            },
                        ) 
                    ),
                    Container( 
                      margin: EdgeInsets.only(top:20), //make submit button 100% width
                      child:SizedBox( 
                        width:double.infinity,
                        child:ElevatedButton(
                          onPressed: () {
                            
                          },
                          child: Text("Submit"),)
                        
                        
                       
                      ),
                    )
               ],)
           ),

           // Selector Start

          Column(
            children: [
              Wrap(
                  children: companyPosition.toList(),
                ),
            ],
          ),
         ],
       ),
    );
  }


// selector

  Iterable<Widget> get companyPosition sync* {
    for (CompanyWidget company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          backgroundColor: Colors.tealAccent[200],
          avatar: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(company.name[0].toUpperCase(),style: TextStyle(color: Colors.white),),
          ),
          label: Text(company.name,),
          selected: _filters.contains(company.name),selectedColor: Colors.purpleAccent,
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

}

class CompanyWidget {
  const CompanyWidget(this.name);
  final String name;
}