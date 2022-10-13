import 'package:flutter/material.dart';
class RadioClass extends StatefulWidget {
  const RadioClass({Key? key}) : super(key: key);

  @override
  State<RadioClass> createState() => _RadioClassState();
}

class _RadioClassState extends State<RadioClass> {
 int? groupvalue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RadioListTile<int>(
              value: 2,
              groupValue: groupvalue,
              title: Text('1st option'),
              onChanged: (val){
                setState(() {
                  groupvalue=val;
                });
              }
          ),
          RadioListTile<int>(
              value: 3,
              groupValue: groupvalue,
              title: Text('2nd option'),
              onChanged:(val){
                setState(() {
                  groupvalue=val;
                });
              }
          )
        ],



      ),
    );
  }
}
