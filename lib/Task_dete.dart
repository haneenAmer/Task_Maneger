import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'Daysandrec.dart';
import 'Taskfinal.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff59a6e),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// container of close
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, left: 20),
                    child: TextButton(
                      onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>firstscreen(),));
                      },
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),

                  /// text in bold
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Creat New Task',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),

                  ///cintainer in light color
                  Center(
                    child: Container(
                      // height: 722,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: Color(0xfff0e6da),
                      ),
                      child: Column(
                        children: [
                          /// first word
                          const Padding(
                            padding: EdgeInsets.only(right: 260.0, top: 25),
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          /// containr of calendar
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: Colors.white,
                                ),
                                width: 350,
                                child: TableCalendar(
                                  focusedDay: DateTime.now(),
                                  firstDay: DateTime.utc(2010, 10, 20),
                                  lastDay: DateTime.utc(2040, 10, 20),
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 300.0, top: 25),
                            child: Text(
                              'Time',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// tow rows under time
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Hour',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Minute',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 230.0),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xfff59a6e),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          '11',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 40.0),
                                        child: Text(
                                          '30',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 20.0),
                                        child: Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 300.0, top: 25),
                                child: Text(
                                  'Title',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 352,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hintText: 'Enter a search term',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0, top: 25),
                                        child: Text(
                                          'Alarm',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 38.0),
                                        child: LiteRollingSwitch(
                                          width: 90.0,
                                          textOn: 'on',
                                          colorOn: const Color(0xfff59a6e),
                                          colorOff: Colors.grey,
                                          textOff: 'off',
                                          value: true,
                                          iconOn: Icons.done,
                                          iconOff: Icons.alarm_off,
                                          onTap: () {},
                                          onDoubleTap: () {},
                                          onSwipe: () {},
                                          onChanged: (bool) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 68.0, right: 22),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Taskfinalpage()));
                                      },
                                      child: Container(
                                        height: 42,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: const Color(0xfff59a6e),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              top: 8.0, left: 22),
                                          child: Text(
                                            'Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 22,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
