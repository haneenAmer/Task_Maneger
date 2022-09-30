

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:taskmanager/Taskfinal.dart';

import 'Task_dete.dart';



class firstscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Icon(Icons.person, color: Colors.black, size: 28,),
            )
          ],
          leading: Icon(Icons.line_weight, color: Colors.black, size: 28,),
          elevation: 0,
          backgroundColor: Colors.white,
        ),

        body: ListView(
            children: [ TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Taskfinalpage()));
              },
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 250.0, bottom: 20.0),
                    child: Text('Daily Task', style: TextStyle(fontSize: 22,color: Colors.black,
                        fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xfff1e6d9),
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40),
                          topRight: Radius.circular(40)),

                    ),
                    // height:700.0,
                    width: double.infinity,

                    child: Column(
                      children: [
                        SizedBox(height: 20,),


                        Row(
                          children: [
                            days("Sunday",
                            ),
                            SizedBox(width: 30,),
                            rec(),

                          ],
                        ),
                        Row(
                          children: [
                            days2("Sunday"),
                            SizedBox(width: 30,),
                            rec2(),

                          ],
                        ),
                        Row(
                          children: [
                            days3("Sunday"),
                            SizedBox(width: 30,),
                            rec3(),

                          ],
                        ),
                        Row(
                          children: [
                            days("Sunday",
                            ),
                            SizedBox(width: 30,),
                            rec(),

                          ],
                        ),
                        Row(
                          children: [
                            days2("Sunday"),
                            SizedBox(width: 30,),
                            rec2(),

                          ],
                        ),
                        Row(
                          children: [
                            days3("Sunday"),
                            SizedBox(width: 30,),
                            rec3(),

                          ],
                        ),
                        Row(
                          children: [
                            days("Sunday",
                            ),
                            SizedBox(width: 30,),
                            rec(),

                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xfff4996e),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Task())); },
          child: Icon(Icons.add),
        ),

      ),
    );}


    Column days(String weakDays){
    return Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Container(
    child: Padding(
    padding: const EdgeInsets.only(right: 15,bottom: 15,top: 25),
    child: RotatedBox(
    quarterTurns: 1,
    child: Text(weakDays,style:
    TextStyle(color: Colors.white,fontSize: 17,
    fontWeight: FontWeight.bold),),
    ),
    ),
    //Text(weakDays,style: const TextStyle(fontSize: 20),),
    height: 110,width:50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    color:Color(0xfff4996e)),
    ),

    ),
    const Padding(
    padding: EdgeInsets.only(left: 40),
    child: Dash(

    dashThickness: 5,
    direction: Axis.vertical,
    length: 60,
    dashLength:5,
    dashBorderRadius: 12,
    dashColor: Color(0xfff4996e)),
    ),


    ],
    );

    }

    Padding rec() {
    return Padding(
    padding: const EdgeInsets.only(bottom: 42),
    child: Column(
    children: [
    Container(
    height: 110, width: 250,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xfff4996e)),
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: const [
    Icon(Icons.access_time_outlined,color: Colors.white,size: 25),
    SizedBox(width: 12,),
    Text('10:00 AM - 1 PM',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    ],
    ),
    ),
    Text('Home Cleaning',style: TextStyle(fontSize:20,color: Colors.white ),),
    Text('Coding',style: TextStyle(fontSize:20,color: Colors.white ),)
    ],
    ),
    ),


    ],
    ),
    );
    }
    ///------------------------2-------------------------


    Column days2(String weakDays,){
    return Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Container(
    child: Padding(
    padding: const EdgeInsets.only(right: 15,bottom: 15,top: 25),
    child: RotatedBox(
    quarterTurns: 1,
    child: Text(weakDays,style:
    TextStyle(color: Colors.white,fontSize: 17,
    fontWeight: FontWeight.bold),),
    ),
    ),
    //Text(weakDays,style: const TextStyle(fontSize: 20),),
    height: 110,width:50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    color:Color(0xfff290ad)),
    ),

    ),
    const Padding(
    padding: EdgeInsets.only(left: 40),
    child: Dash(

    dashThickness: 5,
    direction: Axis.vertical,
    length: 60,
    dashLength:5,
    dashBorderRadius: 12,
    dashColor: Color(0xfff290ad)),
    ),


    ],
    );

    }

    Padding rec2() {
    return Padding(
    padding: const EdgeInsets.only(bottom: 42),
    child: Column(
    children: [
    Container(

    height: 110, width: 250,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xfff290ad)),

    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: const [
    Icon(Icons.access_time_outlined,color: Colors.white,size: 25),
    SizedBox(width: 12,),
    Text('10:00 AM - 1 PM',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    ],
    ),
    ),
    Text('any thing',style: TextStyle(fontSize:20,color: Colors.white ),),
    Text('vvvvvv',style: TextStyle(fontSize:20,color: Colors.white ),)
    ],
    ),
    ),


    ],
    ),
    );
    }
    ///------------------------3-----------------

    Column days3(String weakDays,){
    return Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Container(
    child: Padding(
    padding: const EdgeInsets.only(right: 15,bottom: 15,top: 25),
    child: RotatedBox(
    quarterTurns: 1,
    child: Text(weakDays,style:
    TextStyle(color: Colors.white,fontSize: 17,
    fontWeight: FontWeight.bold),),
    ),
    ),
    //Text(weakDays,style: const TextStyle(fontSize: 20),),
    height: 110,width:50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    color:Color(0xfff1c44f)),
    ),

    ),
    const Padding(
    padding: EdgeInsets.only(left: 40),
    child: Dash(

    dashThickness: 5,
    direction: Axis.vertical,
    length: 60,
    dashLength:5,
    dashBorderRadius: 12,
    dashColor: Color(0xfff1c44f)),
    ),


    ],
    );

    }

    Padding rec3() {
    return Padding(
    padding: const EdgeInsets.only(bottom: 42),
    child: Column(
    children: [
    Container(

    height: 110, width: 250,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xfff1c44f)),

    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: const [
    Icon(Icons.access_time_outlined,color: Colors.white,size: 25),
    SizedBox(width: 12,),
    Text('10:00 AM - 1 PM',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    ],
    ),
    ),
    Text('any thing',style: TextStyle(fontSize:20,color: Colors.white ),),
    Text('vvvvvv',style: TextStyle(fontSize:20,color: Colors.white ),)
    ],
    ),
    ),


    ],
    ),
    );
    }
  }