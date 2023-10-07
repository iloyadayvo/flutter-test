import 'dart:ui';

import 'package:flutter/material.dart';

class popup_celeb extends StatelessWidget {
  final String name;
  
 
  const popup_celeb({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter:ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Stack(children: [
              Container(
                  //padding: EdgeInsets.all(8.0),
                  width: 500,
                  
                  child: Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.d58339de61b5d07fd4db988f8e8a7cdd?rik=SfZdJyKhxDm1VQ&pid=ImgRaw&r=0"),
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 500,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Yayy!!!",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 32),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.celebration),
                      ],
                    ),
                    Text(
                      "It is $name Birthday.",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 32),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(8),
                          onPressed: null,
                          icon: Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          padding: EdgeInsets.all(8),
                          onPressed: null,
                          icon: Icon(
                            Icons.message_rounded,
                            color: Colors.black,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          padding: EdgeInsets.all(8),
                          onPressed: null,
                          icon: Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
