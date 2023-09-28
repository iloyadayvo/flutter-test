 import 'dart:ui';

import 'package:flutter/material.dart';



class test extends StatelessWidget {
  const test({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
     
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text("Good morning!",
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.black
        )
        ),
       
        actions: [
          IconButton(
            tooltip: "Search",
            hoverColor: Colors.deepPurple,
            onPressed: null,
             icon:const Icon(Icons.notifications, 
             color:Colors.purple,)
            
             
             )
         
        ],
      ),
      
      body:  Padding(
        padding:  EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search bar
          
           Container(
            height: 40,
             child: AppBar(
                   backgroundColor: Colors.white,
                   title:const Text("Search for Celebrants...",
                   style: TextStyle(fontWeight: FontWeight.normal,
                   fontSize:17 ,
                   color: Colors.black
                   )
                   ),
                  
                   actions: [
                     IconButton(
              tooltip: "Notification",
              hoverColor: Colors.deepPurple,
              onPressed: null,
               icon:const Icon(Icons.search,)
              
              
               
               )
                    
                   ],
                 ),
           ),
            
            //welcome party
             SizedBox(height: 20),
             SizedBox(
               width: double.infinity,
               child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Review(),
                  SizedBox(
                    width: 20,
                  ),
                Review(),
                        SizedBox(
                    width: 20,
                  ),
                 Review() ],
                 ),
               ),
             ),
            
            
            //second sizebox
            SizedBox(
              height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Upcoming Birthdays" ,
              style: TextStyle(
                fontSize: 32,
                fontWeight: 
                FontWeight.normal),),
            ),
             SizedBox(
              height: 10,
            ),
           SingleChildScrollView(scrollDirection: Axis.horizontal,
             child: Row(
              children: [
                  Celebration(),
                SizedBox(
                  width: 70,
                ),
              Celebration(),
                  SizedBox(
                    width: 70,
                  ),
                 Celebration(),
                  SizedBox(
                    width: 70,
                  ),
                 Celebration()
                ],
             ),
           ),
           Align(
            alignment: Alignment.bottomRight,
             
              child: FloatingActionButton(
                onPressed:null,
                
                 backgroundColor: Color.fromARGB(255, 183, 89, 199),
                 tooltip: "Add people",
                 child: const Icon(Icons.add,color: Colors.white,),
                 ),
            
           ),
            
            
           
               Container(color: Colors.white,
                padding: EdgeInsets.all(8),
                width: 1200,
                height: 36,
                
                child: Row(
                  children:[
                    GestureDetector(
                      child: Icon(Icons.home,
                      color: Colors.pinkAccent,
                      )
                      ,),
                    SizedBox(
                      width:500),
                    GestureDetector(
                    child: Icon(
                      Icons.people_outline,
                      color: Colors.purpleAccent,
                    ),
                  ), 
                  SizedBox(width: 500),
                   GestureDetector(
                    child: Icon(
                      Icons.card_giftcard_rounded,
                      color: Colors.brown,
                    ),
                  ), 
                  ]
                ),
              ),

            
          ]
          ),
      ),
     
      
    );
     
 }
}
class  Celebration extends StatelessWidget{
  const Celebration({super.key});
  
  @override
  Widget build(BuildContext context){
    return Card(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(8),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(2)),
                      child: Column(
                        children: [
                          Column(children: [
                            Text(
                              "Ola Machiavelli",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.cake,color: Colors.purpleAccent,),
                                 SizedBox(
                    width: 7,
                  ),
                                Text(
                                  "20.10 2020",
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.normal),
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
                                  "30 days left",
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.normal),
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
class  Review extends StatelessWidget{
  const Review({super.key});
  
  @override
  Widget build(BuildContext context){
    return Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                        ),
               
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: BackdropFilter(
                            filter:  ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10
                            ),
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              width: 500,
                              child: Column(
                                            children: [
                               Row(mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   IconButton(
                                    onPressed: null,
                                   icon: Icon(Icons.edit,
                                   color: Colors.white,)
                                   ),
                                 ],
                               ),
                               Row(mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("Yayy!!!",
                                                style: TextStyle(fontWeight: FontWeight.w100,
                                                fontSize: 32),
                                                ),
                                   SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.celebration),
                     
                                            
                                 ],
                               ),
                                       Text(
                    "It is Victors Birthday.",
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 32),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(8),
                        onPressed: null, 
                      icon:Icon(Icons.call,color: Colors.black,),
                      color:Colors.white,),
                      
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
                          ),
                        ));
  }
}