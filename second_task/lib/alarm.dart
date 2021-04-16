import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class alarm extends StatelessWidget {

  String time, am_or_pm, once_or_more;
  alarm({this.time, this.am_or_pm, this.once_or_more});
  bool s = true;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 70.0,
      width: 370.0,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(top: 35.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(this.time, style: TextStyle(fontSize: 35, color: Colors.grey[400])),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Text(this.am_or_pm, style: TextStyle(fontSize: 20, color: Colors.grey[400]),)
                ],
              ),
              Text(this.once_or_more, style: TextStyle(fontSize: 20, color: Colors.grey[400]),)
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 190)),
          Icon(Icons.toggle_on_outlined, size: 55, color: Colors.blue,)
        ],
      ),
    );
  }

}