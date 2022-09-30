import 'package:flutter/material.dart';

class Taskfinalpage extends StatelessWidget {
  const Taskfinalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xfff59a6e),
          appBar: AppBar(

            backgroundColor: Color(0xfff59a6e),
            elevation: 0,
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Text('Sunday Tasks',
                    style: TextStyle(
                        color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 22,),
                  Container(
                    height: 722,
                    decoration: BoxDecoration(
                      color: Color(0xfff0e6da),
                      borderRadius: BorderRadius.circular(80)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.rectangle_outlined,color: Colors.black,),
                              SizedBox(width: 8,),
                              Text('Home Cleaning',
                                style:TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                                ) ,)
                            ],
                          ),
                          SizedBox(height: 12,), Row(
                            children: [
                              Icon(Icons.rectangle_outlined,color: Colors.black,),
                              SizedBox(width: 8,),
                              Text('Coding',
                                style:TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                                ) ,)
                            ],
                          ),
                          SizedBox(height: 12,), Row(
                            children: [

                              Icon(Icons.rectangle_outlined,color: Colors.black,),
                              SizedBox(width: 8,),
                              Text('Improve English Skills',
                                style:TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                                ) ,)
                            ],
                          ),
                          SizedBox(height: 12,),
                        ],
                      ),
                    ),
                  )
              ],)
            ],
          ),
    ));
  }
}
