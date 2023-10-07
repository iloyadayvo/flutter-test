 import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:namer_app/celebration.dart';
import 'package:namer_app/popup_celebration.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
             child: TextField(
                 // controller: ,
                   decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.brown,),
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                      ),
                    style:TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    
                    ),
                      textAlign: TextAlign.center,
                          ),
                    
                  
                   
                 ),
           
            
            //welcome party
             SizedBox(height: 20),
             SizedBox(
               width: double.infinity,
               height:200,
               child: ListView.separated(
                scrollDirection: Axis.horizontal,
               
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder:(context, index) => popup_celeb(
                name: "Victor",
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
           Container(
            height: 110,
             child: ListView.separated(
              scrollDirection: Axis.vertical,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder:(context, index) => Celebration(
                  name:"Yuri Ollavier",
                  date: "27.02.2000",
                  days_left: "3",
                  ),

             ),
           ),
           Align(
            alignment: Alignment.bottomRight,
             
              child: FloatingActionButton(
                onPressed:null,
                mini: true,
                
                 backgroundColor: Color.fromARGB(255, 183, 89, 199),
                 tooltip: "Add people",
                 child: const Icon(Icons.add,color: Colors.white,),
                 ),
            
           ),
            
            SizedBox(
              height: 5,
            ),
           
               Container(
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
                            child: Stack(
                              children:[ 
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                width: 500,
                                child:Image(image: 
                                NetworkImage("https://th.bing.com/th/id/R.d58339de61b5d07fd4db988f8e8a7cdd?rik=SfZdJyKhxDm1VQ&pid=ImgRaw&r=0"),
                                fit: BoxFit.cover,
                                )
                                ),
                                Container(
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
                              ]
                            ),
                          ),
                        ));
  }
}