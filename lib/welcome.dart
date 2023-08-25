import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
  
}

class _WelcomeState extends State<Welcome> {
   // To keep track of the currently selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 350,
                width: 410,
                //color: Colors.green,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7)),
                  image: DecorationImage(
                      image: AssetImage("assets/img_1.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight

                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,180 , 10, 0),
                      child: Container(
                          height: 170,width: 340,decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight:Radius.circular(7)),
                          color: Colors.white70
                      ),

                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text("LET THEIR MINDS GROW",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),),
                              ),

                              Row(
                                children: [
                                  InkWell(
                                    child:
                                    Padding(
                                    padding: const EdgeInsets.fromLTRB(45, 0, 15, 0),
                                    child: Container(height: 45,
                                      width: 120,
                                      color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(22, 5, 5, 5),
                                        child: Text("Login",style: TextStyle(fontSize:30 ,fontWeight: FontWeight.bold,color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                    onTap: (){
                                    Navigator.pushNamed(context, 'login');
                                    },
                                  ),

                                  InkWell(
                                    child:
                                      Container(height: 45,width: 120,color: Color(0xFFf5b759),

                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                                      child: Text("Sign up",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white),

                                      ),

                                    ),


                                  ),
                                      onTap: (){
                                        Navigator.pushNamed(context,'registration');
                                      }



                                  ),

                                ],
                              )
                            ],

                          )

                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Text('Latest Products',textAlign:TextAlign.right,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

              ),
              new Divider(
                thickness: 5,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            width: 330,
                           // color: Colors.black12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                              image: DecorationImage(
                                image: AssetImage(
                                "assets/img_2.png"
                                ),
                                  fit: BoxFit.cover
                              )
                            ),
                          ),
                          InkWell(
                            child:
                          Container(
                            height: 100,
                            width: 330,
                            color: Colors.white70,
                            child: Column(
                              children: [
                                Text("OTHER",style: TextStyle(
                                  fontSize: 20,color: Colors.blue,
                                ),),
                                Text("Xbox joystick",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                SizedBox(height: 20,),
                                Text("£48.00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                            onTap: (){
                              Navigator.pushNamed(context, 'xbox');
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            width: 330,
                            //color: Colors.green,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/img_3.png"
                                    ),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          InkWell(
                            child:
                          Container(
                            height: 100,
                            width: 330,
                            color: Colors.white70,
                            child: Column(
                          children: [
                          Text("HEADPHONES",style: TextStyle(
                            fontSize: 20,color: Colors.blue,
                          ),),
                          Text("headphones by beat",style: TextStyle(fontSize: 20,color: Colors.grey),),
                          SizedBox(height: 20,),
                          Text("£48.00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                          ),
                            onTap: (){
                              Navigator.pushNamed(context, 'headphone');
                            },
                    )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            width: 330,
                            //color: Colors.yellow,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/img_4.png"
                                    ),
                                    fit: BoxFit.cover
                                )
                            ),

                          ),
                          Container(
                            height: 100,
                            width: 330,
                            color: Colors.white70,
                            child: Column(
                              children: [
                                Text("CASUAL",style: TextStyle(
                                  fontSize: 20,color: Colors.blue,
                                ),),
                                Text("Lee cooper shoes",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                SizedBox(height: 20,),
                                Text("£43.00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )



                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Column(
                  children: [
                    Text('HOW ITS WORK?',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('This section provides a clear and concise explanation of the underlying principles and steps involved in using our service. We aim to increase understanding and promote effective. utilization by breaking down complex processes into easy-to-follow steps. Whether you\'re a new or returning user, this section will help you get the most out of our service.',textAlign: TextAlign.center,style: TextStyle(fontSize:14 ,color: Colors.grey),),
                    ),
                    SizedBox(height: 30,),
                    Text("Parent",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("The parent account is the main account. Only parents can sign up along with their children to use Junior Deals.",style: TextStyle(color: Colors.grey),),
                    ),
                  SizedBox(height: 30,),
                  Text("Account Features",style: TextStyle(fontSize: 24),),
                  SizedBox(height: 30,),
                  Text("Create products to sell or barter\nCreate children account\nAdd JD Points to the wallet\Purchase or barter product\nMonitor child's account\nApprove or reject products created by child",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 50,),
                    Container(
                      height: 250,
                      width: 410,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          image:DecorationImage(
                              image: AssetImage("assets/img_5.png"),
                              fit: BoxFit.cover
                          ) ),
                    ),
                    SizedBox(height: 50,),
                    Text("Child",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold ),),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("A parent will create the child's account to participate in barter acticity. ",style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 30,),
                    Text("Account Features",style: TextStyle(fontSize: 24),),
                    SizedBox(height: 20,),
                    Text("Create products to sell or barter\n Purchase or barter product",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 50,),
                    Container(
                      height: 250,
                      width: 410,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          image:DecorationImage(
                              image: AssetImage("assets/img_7.png"),
                              fit: BoxFit.cover
                          ) ),
                    ),
                    SizedBox(height: 50,),
                    Text("Product upload",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold ),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Parent and child both can upload the products for barter only child needs approval on the product from the parent and then final approval from the Junior Deals Admin.",style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 30,),
                    Text("Product Features",style: TextStyle(fontSize: 24),),
                    SizedBox(height: 30,),
                    Text("Product pictures\nSet product value in GBP\nPick-up Location\nCondition (New, Used like new, Used good, Used fair\nProduct Information\nProduct Category",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 50,),
                    Container(
                      height: 250,
                      width: 410,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          image:DecorationImage(
                              image: AssetImage("assets/img_8.png"),
                              fit: BoxFit.cover
                          ) ),
                    ),
                    

                  ],
                ),
                
              ),
              BottomNavigationBar(items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],)
              

            ],
          ),
        )
      )
          

    );
  }
}
