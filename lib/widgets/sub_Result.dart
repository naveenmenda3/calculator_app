import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {

  final String text;

  const SubResult({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.fromLTRB(300, 0, 0, 10),
      child: Text( this.text , style: TextStyle(fontSize: 26 ) ),
    );
  }
}