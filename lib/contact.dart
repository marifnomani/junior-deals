import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact us "),
        backgroundColor: Colors.yellow,
      ),

      body:

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:      Column(
              children: [

                Container(
                  height: 450,
                  width: 410,
                  color: Colors.blue,


                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 62, 0, 0),
                        child:Column(
                          children: [
                            Text("Got a question?",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 20,),
                            Text("Your feedback is valuable to us. If you have problems with your account, want to request a feature, or report a bug, we’re more than happy to help",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),

                          ],
                        )
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 106, 0, 0),
                        child: Container(
                            height: 130,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                              color: Colors.white
                            ),
                            //color: Colors.white,

                            child:Column(
                              children: [
                                Text("Personal informations",style: TextStyle(fontSize: 18),),
                                SizedBox(height: 40,),
                                TextField(decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    hintText: 'First Name',
                                    border: OutlineInputBorder()

                                ),),
                              ],
                            )
                        ),

                      )
                    ],

                  ),
                ),
                Container(
                  height: 410,
                  width: 320,
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Last Name',
                          border: OutlineInputBorder()

                      ),),
                      SizedBox(height: 14,),
                      TextField(decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Email',
                          border: OutlineInputBorder()

                      ),),
                      SizedBox(height: 14,),
                      IntlPhoneField(
                        decoration: (
                        InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Phone',
                          border: OutlineInputBorder()
                        )
                        ),
                      ),
                 TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        decoration: InputDecoration(
            hintText: "Enter Remarks",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.blueAccent)
            )
        ),

                 ),

                      SizedBox(height: 15,),
                      Container(height: 40,
                        width: 150,
                        // color: Colors.blue,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),color: Colors.yellow

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Send massage",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                      ),

                    ],

                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 1098,
                  width: 360,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 350,
                          width: 330,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(Icons.email,color: Colors.blueAccent,size: 70,),
                              ),
                              Text("Email us",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                              SizedBox(height: 30,),
                              Text("Email us for general queries, including marketing and partnership opportunities.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),),
                              SizedBox(height: 20,),
                              Text("support@junoirdeals.co.uk",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontSize: 18),)



                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 350,
                          width: 330,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(Icons.phone,color: Colors.blueAccent,size: 70,),
                              ),
                              Text("Call us",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                              SizedBox(height: 30,),
                              Text("Call us to speak to a member of our team. We are always happy to help you.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),),
                              SizedBox(height: 20,),
                              Text("+44 7448 454910",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontSize: 18),)


                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 350,
                          width: 330,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(Icons.email,color: Colors.blueAccent,size: 70,),
                              ),
                              Text("Office Location",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                              SizedBox(height: 30,),
                              Text(" 115 London Road\n Morden, England\n SM4 5HP",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),),

                            ],
                          ),
                        ),
                      ),





                    ],
                  ),
                ),







              ],


            ),



          )



    );
  }
}
