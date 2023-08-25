import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
            SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 360,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.wallet,color: Colors.white,),
                      ),
                      Text('0 JDP',style: TextStyle(fontSize: 22,color: Colors.white),),

                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Container
                          (height: 40,
                          width: 120,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Icon(Icons.view_sidebar,color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.notification_important_rounded,color: Colors.white,),
                              ),
                              Icon(Icons.copy,color: Colors.white,)

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: Text("MA"),
                          radius: 30,


                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1,),
                Container(
                  height: 734,
                  width: 360,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                          )
                          ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          width: 330,
                         // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                          ),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 45, 20, 0),
                                    child: Text("TOTAL LISTINGS",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("0",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                                  ),



                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(80, 8, 20, 0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.red.shade300,
                                  child:  FaIcon(FontAwesomeIcons.copy,size: 25,color: Colors.white,)
                                  ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          width: 330,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white
                          ),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 45, 20, 0),
                                    child: Text("TOTAL CHILD",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("0",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                                  ),



                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(108, 8, 20, 0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.orange.shade300,
                                  child:  FaIcon(FontAwesomeIcons.faceSmile,size: 25,color: Colors.white,)
                                  ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          width: 330,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white
                          ),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 45, 20, 0),
                                    child: Text("TOTAL SALES",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("0",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                                  ),



                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(104, 8, 20, 0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.pink.shade300,
                                  child:  FaIcon(FontAwesomeIcons.copy,size: 25,color: Colors.white,)
                                  ,
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          width: 330,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),


                              color: Colors.white
                          ),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 45, 20, 0),
                                    child: Text("TOTAL ORDER",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("0",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                                  ),



                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(104, 8, 20, 0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.green.shade300,
                                  child:  FaIcon(FontAwesomeIcons.copy,size: 25,color: Colors.white,)
                                  ,
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                            height: 120,
                            width: 330,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft:Radius.circular(8) ),
                                color: Colors.white
                            ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("Orders",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(118, 15, 15, 15),
                                      child: Container(
                                        height: 45,
                                        width: 90,
                                       // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.blue
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text("See all",style: TextStyle(color: Colors.white,fontSize: 20),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(height: 45,
                  width: 330,
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TableCell(child: Text("#",style: TextStyle(color: Colors.grey,fontSize: 20),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TableCell(child: Text("PRODUCT",style: TextStyle(color: Colors.grey,fontSize: 15),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TableCell(child: Text("STATUS",style: TextStyle(color: Colors.grey,fontSize: 15       ),)),
                          ),

                        ]
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  height: 25,
                  width: 330,
                  color: Colors.white,
                ),
                SizedBox(height: 30,),
                Container(
                  height: 120,
                  width: 330,
                  color: Colors.white,
                    child: Row(
                children: [
                Padding(
                padding: const EdgeInsets.all(15.0),
              child: Text("Listings",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
      Padding(
        padding: const EdgeInsets.fromLTRB(105, 15, 15, 15),
        child: Container(
          height: 45,
          width: 90,
          // color: Colors.blue,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("See all",style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ),
      ),


      ],
    ),
                  ),
                SizedBox(height: 2,),
                Container(height: 45,
                  width: 330,
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("TITLE",style: TextStyle(color: Colors.grey,fontSize: 15),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("STATUS",style: TextStyle(color: Colors.grey,fontSize: 15       ),)),
                            ),

                          ]
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  height: 25,
                  width: 330,
                  color: Colors.white,
                ),
                SizedBox(height: 30,),
                Container(
                  height: 120,
                  width: 330,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Transactions",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(53, 15, 15, 15),
                        child: Container(
                          height: 45,
                          width: 90,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("See all",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(height: 45,
                  width: 330,
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("DESCRIPTION",style: TextStyle(color: Colors.grey,fontSize: 14),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("AMOUNT",style: TextStyle(color: Colors.grey,fontSize: 14),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("BALANCE",style: TextStyle(color: Colors.grey,fontSize: 14   ),)),
                            ),

                          ]
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  height: 25,
                  width: 330,
                  color: Colors.white,
                ),
                SizedBox(height: 30,),
                Container(
                  height: 120,
                  width: 330,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Recent Chats ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(43, 15, 15, 15),
                        child: Container(
                          height: 45,
                          width: 90,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("See all",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(height: 45,
                  width: 330,
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TableCell(child: Text("NAME",style: TextStyle(color: Colors.grey,fontSize: 14),)),
                            ),

                          ]
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  height: 25,
                  width: 330,
                  color: Colors.white,
                ),




              ],
            ),


            )



    );
  }
}
