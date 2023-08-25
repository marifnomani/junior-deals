import 'package:flutter/material.dart';
class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text('Forget password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
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
                      image: AssetImage("assets/img_10.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight

                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5,33,5,0),
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
                      SizedBox(height: 70,),
                      Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text("Reset your password",style: TextStyle(fontSize: 14,color: Colors.white),),
                      SizedBox(height: 43,),

                      Container(
                        height: 120,
                        width: 320,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(height: 0,),
                            TextField(decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Email',
                                border: OutlineInputBorder()

                            ),),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 5, 5),
                              child: Row(
                                children: [



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
              Container(height: 120,
                width: 320,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(height: 40,
                      width: 100,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),color: Colors.blue

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Submit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    )


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
                      child: Text("Login"),
                    ),

                  ),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'registration');
                  },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(170, 9, 5, 0),
                      child: Text("Create account"),
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


