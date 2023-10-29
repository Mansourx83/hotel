import 'package:flutter/material.dart';
//package of calender
import 'package:table_calendar/table_calendar.dart';
import 'navbar.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  //the day you chose appeared on screen
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime foucusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //app bar you made
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                          builder: (context) {
                            return BottomNavyBarPage();
                          },
                        ), (route) => false);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Schedule',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.settings)
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              // The message appears on the screen to show what date has been selected
              Text(
                "Selected Day  " + today.toString().split(" ")[0],
                style: TextStyle(
                  color: Color.fromARGB(255, 158, 158, 158),
                  fontSize: 12,
                ),
              ),
              //the Calendar used
              Container(
                child: TableCalendar(
                  locale: 'en_US',
                  rowHeight: 45,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: today,
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                ),
              ),
              //Calendar UP
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Schedule',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Color(0xff4C4DDC)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset('assets/images/Image.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Asteria hotel',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            r'$165,3',
                            style: TextStyle(
                              color: Color(0xff4C4DDC),
                            ),
                          ),
                          Text(
                            '/night',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Row(
                          children: [
                            Image.asset('assets/images/location.png'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Wilora NT 0872, Australia',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 75),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xff4C4DDC),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '27 October 2022',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset('assets/images/image 7.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Golden Pelece',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            r'$175,3',
                            style: TextStyle(
                              color: Color(0xff4C4DDC),
                            ),
                          ),
                          Text(
                            '/night',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Row(
                          children: [
                            Image.asset('assets/images/location.png'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Wilora NT 0872, Australia',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 75),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xff4C4DDC),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '19 October 2022',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
