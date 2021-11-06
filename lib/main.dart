import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.add_box_outlined , color:  Colors.white, size: 35,),
            ),
            Padding(
              padding: EdgeInsets.only(right: 18),
                  child: Icon(Icons.menu , color: Colors.white, size:35)),
          ],
          title: Row(
            children: const [
              Icon(Icons.lock_outline , color: Colors.white, size:25),
              SizedBox(width: 2,),
              Text(
                'abdelghani.meliani' ,
                style: TextStyle(
                    fontSize: 25 ,
                    color: Colors.white
                ),
              ),
            ],
          ) ,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8 , top:15 , right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        image: DecorationImage(

                            image:AssetImage("assets/photodeprofile.PNG",)
                        )


                      ),
                     height: 110,
                      width: 110,

                    ) ,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        children: const [
                          Text(
                            '13' ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                              'Publications',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15 ,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 8,),

                      Column(
                        children: const [
                          Text(
                            '150' ,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20 ,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'Abonnés',
                            style: TextStyle(
                                color: Colors.white ,
                                fontSize: 15 ,
                            ),
                          ),
                        ],
                      ),
                        SizedBox(width: 8,),
                      Column(
                        children:const  [
                          Text(
                            '266' ,
                            style: TextStyle(
                                color: Colors.white,
                              fontWeight: FontWeight.bold ,
                              fontSize: 20
                            ),
                          ),
                          Text(
                            'Abonnements',
                            style: TextStyle(
                                color: Colors.white ,
                              fontSize: 15
                            ),
                          ),
                        ],
                      )
                    ],)
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
