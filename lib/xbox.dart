import 'package:flutter/material.dart';
class Xbox extends StatefulWidget {
  const Xbox({super.key});

  @override
  State<Xbox> createState() => _XboxState();
}

class _XboxState extends State<Xbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
            Column(
              children: [
                Container(
                  height: 150,
                  width: 350,
                  color: Colors.white70,
                  child: Row(
                    children: [
                      Image.asset('assets/img.png',height: 100,width: 100,),
                      Container(
                        height: 150,
                        width: 250,
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6, 52, 4, 4),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search Products",
                                suffixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: const BorderSide(),
                                )
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    height: 280,
                    width: 350,
                    //color: Colors.black
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_2.png"),
                          fit: BoxFit.fill,

                        )
                    ),
                  ),
                ),
                Container(height: 150,
                  width: 350,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 20, 8, 4),
                        child: Text("Available",style: TextStyle(
                            fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Text("Almost new",style: TextStyle(color: Colors.grey,fontSize: 18),),
                      Text("Xbox joystick",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 218,
                  width: 350,
                  color: Colors.white70,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Added by:",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          SizedBox(height: 20,),
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('assets/img_15.png'),
                          ),
                          SizedBox(height: 10,),
                          Text("Syed Marif Ali ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),)
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 190,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.chat_rounded,color: Colors.white,size: 30,),
                              Text("chat with seller",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ),SizedBox(height: 30,),
                Container(
                  height: 180,
                  width: 350,
                  color: Colors.white70,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Price :",style: TextStyle(color: Colors.grey,fontSize: 18),),
                      ),
                      Text("£48.00 GBP",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 5, 10),
                        child: Row(
                          children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  height: 45,
                                  width: 120,
                                 // color: Colors.blue,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 9, 10, 2),
                                    child: Text("Barter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  ),

                              ),
                               ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 45,
                                  width: 120,
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.yellow
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(38, 9, 10, 2),
                                    child: Text("Buy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  ),
                                ),
                            ),

                          ],
                        ),
                      )

                    ],
                  ),

                )
              ],
            ),

          )

    );
  }
}
