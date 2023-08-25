import 'package:flutter/material.dart';
import 'package:auth_service/auth_service.dart';
import 'package:juniors_deals/marif.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      // Handle empty fields
      return;
    }

    // Call AuthService's login method
    final response = await AuthService.login(email, password);

    // Handle the response
    if (response.containsKey('success')) {
      // Successfully logged in
      // You can navigate to the next screen or perform other actions here
    } else if (response.containsKey('error')) {
      // Handle login error, display error message
      final errorMessage = response['error'];
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
      ),
      body:
      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:       Column(

            children: [
              Column(
                children: [
                  Container(

                    height: 400,
                    width: 410,

                    //color: Colors.green,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7)),
                      image: DecorationImage(
                          image: AssetImage("assets/img_9.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,


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
                          SizedBox(height: 72,),

                          Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                          SizedBox(height: 30,),
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
                ],
              ),
              Container(height: 320,
                width: 320,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("or sign in with crednentials"),
                    SizedBox(height: 30,),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Email',
                      border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder()

                    ),),
                    SizedBox(height: 30,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(90, 5, 0, 5),
                              child: Text("Remmember me"),
                            ),
                            Checkbox(
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value;
                                });
                              },

                            )
                          ],
                        ),
                        Container(height: 40,
                          width: 100,
                         // color: Colors.blue,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),color: Colors.blue

                          ),
                             child: TextButton(onPressed: (){Navigator.pushNamed(context, 'dashboard'); },
                             child: Text("sign in",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)


                        )




                        ),


                      ],
                    )



                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'forget');
                  },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 5, 0),
                      child: Text("Forget password?"),
                    ),

                  ),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'registration');
                  },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 9, 5, 0),
                      child: Text("Create new account"),
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
      onTap: (){
      Navigator.pushNamed(context, "about");
      },
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
