import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  YoutubePlayerController? _controller;
  @override
  void initState(){
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'HqAYfnTEEzM',//https://youtu.be/HqAYfnTEEzM
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent
        ),
      ),
      builder: (context,player){
        return Scaffold(
          appBar: AppBar(
            title: Text('About us'),
            backgroundColor: Colors.transparent,
          ),
          body:
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child:
                  Column(
                    children: [
                      player,
                      Container(
                        height: 300,
                        width: 410,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img_14.png"),
                                fit: BoxFit.contain
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,200, 0,0),
                              child: Container(
                                height: 100,
                                width: 330,
                                color: Colors.white70,
                                child: Text("Junior Deals (JD) is an application that teaches children the value of responsible financial decision-making and safe bartering.It aims to encourage the youth of the United Kingdom to step up, take on duty, and appreciate the value of their belongings",style: TextStyle(color: Colors.grey,fontSize: 14.5),),
                              ),
                            )
                          ],
                        ),


                      ),

                      Container(
                        height: 140,
                        width: 330,
                        color: Colors.white70,
                        child: Text("Parents in the United Kingdom represent a vast market that requires an efficient means of instilling a sense of responsible saving and appreciation of assets in their children. Junior Deals gives youngsters in the United Kingdom good value fostering the development of young minds and promote interaction between children and their parents.",style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(
                        height:30 ,
                      ),
                      Container(
                        height: 150,
                        width: 410,
                        color: Colors.blueAccent,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Text("Promsising Values",style: TextStyle(
                                color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold
                              ),),
                            ),
                            Text("Junior Deals aims to instill following healthy values in children:",textAlign: TextAlign.center,style: TextStyle(
                              color: Colors.white,fontSize: 14
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        height: 2220,
                        width: 410,
                       // color: Colors.blueAccent,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.lightbulb,
                                        size: 70,
                                        color: Colors.yellow,

                                      ),
                                    ),

                                    Text("Resilience",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Junior Deals instils resilience in children so that they can overcome extreme hardships.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.tableCellsLarge,
                                        size: 70,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Time management",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Time management is a vital skill for children; therefore, Junior Deals enable them to prioritise work and complete it without feeling overwhelmed.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.tableCellsLarge,
                                        size: 70,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Innovation and creativity",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Junior Deals is a self-sufficient platform that fosters innovation and creativity among children. It provides an extraordinary opportunity for children to express their creativity.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.tableCellsLarge,
                                        size: 70,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Sense of initiating",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Junior Deals enables children to have pleasant experiences in which they acquire a sense of themselves as significant and respected and a sense of belonging; consequently, they communicate more effectively.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.tableCellsLarge,
                                        size: 70,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Optimistic approach",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Junior Deals instill in children an attitude that promotes optimism and self-determination. Children learn that constant effort and diligence result in excellent rewards in such an environment.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 350,
                                width: 330,
                                color: Colors.white70,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.tableCellsLarge,
                                        size: 70,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Negotiation",textAlign: TextAlign.center,style: TextStyle(color: Colors.yellow,fontSize: 28,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 30,),
                                    Text("Communication is essential to the negotiation process. The way of communication determines the result; therefore, Junior Deals teaches the children such skills that they adopt the solutions to various problems",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18),)

                                  ],
                                ),


                              ),
                            ),



                          ],

                        ),
                      )
                    ],
                  ),


              )



        );

    }




    );
  }
}
