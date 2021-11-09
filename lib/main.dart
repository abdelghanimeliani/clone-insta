import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MediaQuery(
        data: MediaQueryData(),
          child: MyApp())
  );
}

class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home:  Scaffold(
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              fit: BoxFit.fill ,

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
                  ) ,

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Abd Elghani Meliani' ,
                        style: TextStyle(
                          color: Colors.white ,
                          fontSize: 18
                        ),
                        ),

                        Text('📱💻' ,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white ,
                              fontSize: 18
                          ),
                        ),

                        Text('اللهم قدرٌ جميل ، و خبر جميل ، و دعوة مستجابة ❤️' ,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white ,
                              fontSize: 18
                          ),
                        ),

                        Text('https://github.com/abdelghanimeliani/' ,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFABCDEF) ,
                              fontSize: 18,
                          ),
                        ),

                        Text('voir la traduction' ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white ,
                              fontSize: 18
                          ),
                        ),

                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white54) ,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 30,
                          width: 350,
                          child: const Center(
                            child: Text(
                              'Modifier le profile' ,
                              style: TextStyle(
                                fontSize: 18 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ) ,


                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white24) ,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 30,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.keyboard_arrow_down_outlined , color: Colors.white,)
                          ),
                        )
                      ],
                    ),
                  ) ,


                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryALaUne('netkhayel' , "assets/1.jpg") ,
                          StoryALaUne('netkhayel' , "assets/2.jpg") ,
                          StoryALaUne('netkhayel' , "assets/3.jpg") ,
                          StoryALaUne('netkhayel' , "assets/4.jpg") ,
                          StoryALaUne('netkhayel' , "assets/5.jpg") ,
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.crop_square_rounded , color: Colors.white)),
                      Tab(icon: Icon(Icons.person_pin_outlined , color: Colors.white,) ,),

                    ],
                  ),
                  Container(
                    height: 800,
                    width: 1000,
                    child: TabBarView(
                      children: [
                        GridView.count(
                            crossAxisCount: 3 ,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children: [
                            photo("assets/1.PNG"),
                            photo("assets/2.PNG"),
                            photo("assets/3.PNG"),
                            photo("assets/4.PNG"),
                            photo("assets/5.PNG"),
                            photo("assets/6.PNG"),

                          ],
                        ),
                        Icon(Icons.directions_transit),
                      ],
                    ),
                  ),


                ],
              )
            ),
          ),
        ),
    );
  }
}




StoryALaUne(String titre , String photo){
  return Row(
    children: [
      Column(
        children: [
          Container(
            height:70 ,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white24,
                border: Border.all(color: Colors.white70) ,
                shape:BoxShape.circle
            ),
            child: Container(
              height: 45,
              width: 45,
              decoration:   BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(photo),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ) ,
          SizedBox(height: 8,) ,
          Text(
             titre ,
            style: TextStyle(
                color: Colors.white
            ),
          )
        ],
      ),

      SizedBox(width: 10,)
    ],
  );
}


photo(String location){
  return Container(
    height: 400,
    width: 400,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(location),
        fit: BoxFit.fill
      )
    ),
  );
}