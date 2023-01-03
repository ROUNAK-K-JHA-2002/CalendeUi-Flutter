import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CyclePage extends StatefulWidget {
  const CyclePage({super.key});

  @override
  State<CyclePage> createState() => _CyclePageState();
}

class _CyclePageState extends State<CyclePage> {
  List<String> CalenderOptions = [
    "Period",
    "Ovulation",
    "Fertile",
    "Expected Period"
  ];

  List<String> choices = [
    "Calm",
    "Sad",
    "Happy",
    "Energetic",
    "Nice",
    "Shocked"
  ];
  static const Mood_Icons = <IconData>[
    Icons.emoji_emotions,
    Icons.sentiment_dissatisfied,
    Icons.mood,
    Icons.sentiment_very_satisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_very_dissatisfied
  ];
  List<String> symptopms = [
    "All Good",
    "Headache",
    "Stress",
    "Gastric",
    "Body pain",
    "Confusion"
  ];
  static const symptopms_Icons = <IconData>[
    Icons.thumb_up,
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.gradient_sharp,
    Icons.elderly_woman,
    Icons.psychology
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          height: 25.h,
          margin: EdgeInsets.symmetric(vertical: 2.h),
          decoration: BoxDecoration(
              color: Colors.lightBlue.shade100, shape: BoxShape.circle),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: const Text("Period : "),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 1.h),
              child: Text(
                "Day 4",
                style: TextStyle(fontSize: 4.h),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 15.h),
              child: const Text(
                "Medium Chance to get Pregnent",
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
        Container(
          height: 40.h,
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          child: SfCalendar(
            view: CalendarView.month,
            cellBorderColor: Colors.transparent,
            headerStyle: const CalendarHeaderStyle(textAlign: TextAlign.center),
            headerHeight: 5.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: const Divider(
            color: Colors.black,
          ),
        ),
        Container(
          height: 12.h,
          margin: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade300,
          ),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 1.2.h,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "Period",
                            style: TextStyle(fontSize: 2.h),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 1.2.h,
                            color: Colors.blue.shade500,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "Fertile",
                            style: TextStyle(fontSize: 2.h),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 1.h),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 1.2.h,
                              color: Colors.blue.shade900,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Ovulation",
                              style: TextStyle(fontSize: 2.h),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 1.h),
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 1.2.h,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Expected Period",
                              style: TextStyle(fontSize: 2.h),
                            ),
                          ],
                        ))
                  ],
                ))
          ]),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          height: 15.h,
          margin: EdgeInsets.only(bottom: 3.h),
          child: ListView(shrinkWrap: true, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Mood",
                style: TextStyle(fontSize: 2.h),
              ),
            ),
            Container(
                height: 15.h,
                alignment: Alignment.topLeft,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: choices.length,
                    itemBuilder: (BuildContext context, index) {
                      return SizedBox(
                        width: 20.w,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              height: 7.h,
                              width: 27.w,
                              margin: EdgeInsets.only(
                                  left: 2.h, top: 2.h, bottom: 2.h),
                              child: Icon(
                                Mood_Icons[index],
                                color: Colors.grey.shade600,
                                size: 5.h,
                              ),
                            ),
                            Text(
                              choices[index],
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      );
                    })),
          ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Divider(
            color: Colors.grey.shade600,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          height: 15.h,
          margin: EdgeInsets.only(bottom: 5.h),
          child: ListView(shrinkWrap: true, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Symptoms",
                style: TextStyle(fontSize: 2.h),
              ),
            ),
            Container(
                height: 15.h,
                alignment: Alignment.topLeft,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: symptopms.length,
                    itemBuilder: (BuildContext context, index) {
                      return SizedBox(
                        width: 20.w,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              height: 7.h,
                              width: 27.w,
                              margin: EdgeInsets.only(
                                  left: 2.h, top: 2.h, bottom: 2.h),
                              child: Icon(
                                symptopms_Icons[index],
                                color: Colors.grey.shade600,
                                size: 5.h,
                              ),
                            ),
                            Text(
                              symptopms[index],
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      );
                    })),
          ]),
        )
      ],
    ));
  }
}
