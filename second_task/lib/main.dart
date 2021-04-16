import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_task/alarm.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('Clock App'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Alarm',
                  icon: Icon(Icons.alarm),
                ),
                Tab(
                  text: 'StopWatch',
                  icon: Icon(Icons.watch_later_outlined),
                )
              ],
            ),
            backgroundColor: Colors.green,
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  children: [
                    alarm(
                      time: '05:30',
                      am_or_pm: 'AM',
                      once_or_more: 'Once',
                    ),
                    alarm(
                      time: '10:15',
                      am_or_pm: 'PM',
                      once_or_more: 'sat, sun',
                    ),
                    alarm(
                      time: '09:15',
                      am_or_pm: 'AM',
                      once_or_more: 'fri, tue',
                    ),
                    alarm(
                      time: '03:20',
                      am_or_pm: 'PM',
                      once_or_more: 'Once',
                    ),
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Icon(Icons.add, color: Colors.blue, size: 40)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 190),
                child: Column(
                  children: [
                    Text('00:00:00', style: TextStyle(color: Colors.white, fontSize: 60,),),
                    Padding(padding: EdgeInsets.only(top: 270)),
                    Icon(Icons.play_circle_filled_sharp, color: Colors.blue, size: 60,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
