import 'package:calender_ui/Pages/CyclePage.dart';
import 'package:calender_ui/Pages/LogsPage.dart';
import 'package:calender_ui/Pages/TimelinePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            home: SafeArea(
                child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 5.h,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  title: const Text("Prescription"),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () {},
                  ),
                  bottom: TabBar(
                    labelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: "Cycle",
                      ),
                      Tab(
                        text: "Timeline",
                      ),
                      Tab(
                        text: "Logs",
                      )
                    ],
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    indicatorColor: Colors.black,
                  ),
                  elevation: 0,
                ),
                body: const TabBarView(
                    children: [CyclePage(), TimelinePage(), LogsPage()]),
              ),
            )));
      },
    );
  }
}
