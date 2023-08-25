import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child: Text('Registration',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:       Column(
            children: [
              Container(
                height: 400,
                width: 410,
                //color: Colors.green,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7)),
                  image: DecorationImage(
                      image: AssetImage("assets/img_11.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight

                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,30,10,0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                             Container(
                              height:80 ,
                              width: 100,
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),


                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                        child: Text("Create account!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                      ),

                      SizedBox(height: 52,),
                      Container(
                        height: 160,
                        width: 320,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("Sign in with"),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 5, 5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 130,
                                    //color: Colors.grey,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.white

                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 9,
                                              spreadRadius: 0
                                          )
                                        ]

                                    ),
                                    child: Row(
                                      children: [
                                        Container(height: 54,
                                          width: 29,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("assets/img_12.png"),
                                              )
                                          ),
                                        ),
                                        Text("Facebook")

                                      ],
                                    ),


                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 5, 5, 5),
                                    child: Container(
                                      height: 45,
                                      width: 130,
                                      //color: Colors.grey,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              width: 2,
                                              color: Colors.white

                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 9,
                                                spreadRadius: 0
                                            )
                                          ]

                                      ),
                                      child: Row(
                                        children: [
                                          Container(height: 54,
                                            width: 29,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("assets/img_13.png"),
                                                )
                                            ),
                                          ),
                                          Text("Google")

                                        ],
                                      ),




                                    ),
                                  )
                                ],

                              ),

                            )
                          ],
                        ),



                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 450,
                width: 320,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("or sign in with crednentials"),
                    SizedBox(height: 30,),
                    TextField(decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Name',
                        border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 10,),
                    TextField(decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'Email',
                        border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 10,),

                    TextField(decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 10,),

                    TextField(decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                          child: Text("I agree with the"),
                        ),
                        Text("Terms & Conditions",style: TextStyle(color: Colors.blue),),
                        Checkbox(
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },

                        ),

                      ],
                    ),
                    Container(height: 40,
                      width: 150,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),color: Colors.blue

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Create account",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    ),







                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 9, 5, 0),
                      child: Text("Already have account"),
                    ),

                  ),

                ],
              )
            ],
          ),

        ),
      drawer: Container(
      width: 290,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              width: 280,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img.png"),
                      fit: BoxFit.fill

                  )
              ),
            ),
            new Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(height: 20,),
            ListTile(

              title: Text('Home',style: TextStyle(fontSize: 16),),
            ),

            ListTile(

              title: Text('Shop',style: TextStyle(fontSize: 16),),
            ),

            ListTile(
              title: Text('About us',style: TextStyle(fontSize: 16),),
            ),
            ListTile(
              title: Text('Contact us',style: TextStyle(fontSize: 16),),
              onTap: (){
                Navigator.pushNamed(context, "contact");
              },
            ),

            new Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.facebook ,size: 30,color: Colors.blue,
              ),
              title: Text('facebook',style: TextStyle(fontSize: 16),),
            ),

            ListTile(
              leading: Icon(
                Icons.youtube_searched_for_outlined,size: 30,color: Colors.blue,
              ),
              title: Text('youtube',style: TextStyle(fontSize: 16),),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,size: 30,color: Colors.blue,
              ),
              title: Text('tik tok',style: TextStyle(fontSize: 16),),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,size: 30,color: Colors.blue,
              ),
              title: Text('instagram',style: TextStyle(fontSize: 16),),
            ),





          ],

        ),

      ),
    ),



    );
  }
}


