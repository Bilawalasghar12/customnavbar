import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4customnavbar2/fifthscreen.dart';
import 'package:untitled4customnavbar2/fourthscreen.dart';
import 'package:untitled4customnavbar2/secondclass.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: App(),
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool button = false;
  int millisecond = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Stack(
          children: [


            Column( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                   boxShadow: [BoxShadow(color: Colors.black12, blurStyle: BlurStyle.outer, blurRadius: 10), ]

                  ),

                  width: MediaQuery.of(context).size.width,
                  height: 101,


                ),
              ],
            ),


            Transform.translate(
              offset: Offset(0, -15),
              child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Spacer(),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthScreen()),
                      );

                    },
                    child: Column( mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(),

                        SvgPicture.asset('assets/Group 1000001047.svg'),
                        SizedBox(height: 10,),
                        Text('Home'),

                      ],
                    ),
                  ),
                 Spacer(),
                 Spacer(),
                 Spacer(),
                 Spacer(),

                 // SizedBox(width: 400,),

                  GestureDetector(
                    onTap: (){


                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthScreen()),
                      );





                    },
                    child: Column( mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset('assets/Group 1000001048.svg', color: Colors.black,),
                        SizedBox(height: 10,),
                        Text('Profile'),


                      ],
                    ),
                  ),
Spacer(),




                ],



              ),
            ),







            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(

              width: MediaQuery.of(context).size.width,
              child: Center(
                child: AnimatedContainer(


                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  ),
                  duration: Duration(milliseconds: millisecond),
                  //  color: Colors.blue,

                  height: button ? MediaQuery.of(context).size.height / 1.5 : 131,
                  width: 131,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 131,
                        height: 131,
                        //color: Colors.red,
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),

                        decoration: BoxDecoration(
                            color: Color(0xffff6C00),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100),
                                topLeft: Radius.circular(100))),

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              button = !button;
                            });

                            Future.delayed(
                              Duration(
                                milliseconds: millisecond,
                              ),
                            ).then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondClass(),
                              ),
                            )).then((value) =>  setState(() {
                              button = !button;
                            }));
                           
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white),
                              child: Center(
                                child: SvgPicture.asset('assets/material-symbols_sos.svg')
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xffff6C00),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ]


            ),

        ]
        ),
      ),
    );
  }
}

