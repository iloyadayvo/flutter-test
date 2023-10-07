import 'package:flutter/material.dart';

class Celebration extends StatelessWidget {
    final String name;
    final String date;
    final String days_left;
  const Celebration({super.key, required this.name,required this.date,required this.days_left});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
        child: Column(
          children: [
            Column(children: [
              Text(
               name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cake,
                    color: Colors.purpleAccent,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    date,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.pinkAccent,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "$days_left days left",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
