import 'package:drawer_page1/ui_Demo/DashboardCont.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
    //   // backgroundColor: Color(0xffffffff),
    //   appBar: AppBar(
    //     elevation: 4,
    //     centerTitle: false,
    //     automaticallyImplyLeading: false,
    //     backgroundColor: Color.fromARGB(0, 255, 255, 255),
    //     shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.zero,
    //     ),
    //     title: const Text(
    //       "Task List",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         fontStyle: FontStyle.normal,
    //         fontSize: 21,
    //         color: Color(0xff000000),
    //       ),
    //     ),
    //     leading: Container(
    //       margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    //       constraints: const BoxConstraints(
    //         minHeight: 0,
    //         minWidth: 0,
    //         maxHeight: double.infinity,
    //         maxWidth: double.infinity,
    //       ),
    //       decoration: BoxDecoration(
    //         color: Color.fromARGB(132, 220, 158, 244),
    //         shape: BoxShape.rectangle,
    //         borderRadius: BorderRadius.circular(10.0),
    //       ),
    //       child: const Icon(
    //         Icons.dashboard,
    //         color: Color(0xff212435),
    //         size: 24,
    //       ),
    //     ),
    //     actions: [
    //       Container(
    //           margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
    //           decoration: BoxDecoration(
    //             shape: BoxShape.rectangle,
    //             borderRadius: BorderRadius.circular(64.0),
    //             border:
    //                 Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
    //           ),
    //           child: const Icon(Icons.turn_right,
    //               color: Color(0xff212435), size: 32)),
    //       Container(
    //           margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
    //           decoration: BoxDecoration(
    //             shape: BoxShape.rectangle,
    //             borderRadius: BorderRadius.circular(64.0),
    //             border:
    //                 Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
    //           ),
    //           child: const Icon(Icons.more_vert,
    //               color: Color(0xff212435), size: 32)),
    //     ],
    //   ),
      // body: 
      SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            // const FloatingActionButton(
            //   onPressed: null,
            //   tooltip: 'Disabled',
            //   child: Icon(Icons.add),
            //   backgroundColor: Colors.grey,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 5),
                      padding: EdgeInsets.zero,
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(64.0),
                        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Complete",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 173, 19),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Text(
                                  "65",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      padding: EdgeInsets.zero,
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(64.0),
                        border: Border.all(
                            color: Color.fromARGB(255, 95, 87, 87), width: 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "To Do",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x1f000000),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Text(
                                  "45",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      padding: EdgeInsets.zero,
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(64.0),
                        border: Border.all(
                            color: Color.fromARGB(255, 95, 87, 87), width: 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "In Review",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 220, 158, 244),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Text(
                                  "3",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DashboardCont(
                priority: "High",
                taskType: "On Track",
                taskTitle: "Dashboard design for admin"),
            DashboardCont(
                priority: "Low",
                taskType: "Meeting",
                taskTitle: "Konom web application"),
            DashboardCont(
                priority: "Medium",
                taskType: "At Risk",
                taskTitle: "Research and development"),
            DashboardCont(
                priority: "Medium",
                taskType: "Meeting",
                taskTitle: "Project Presentation"),
          ],
        ),
      
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.widgets_outlined), label: ""),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.done_outlined,
      //         ),
      //         // title:Text("home"),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.insert_chart_outlined_outlined,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: CircleAvatar(
      //           backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg'),
      //           // backgroundColor: Colors.amber,
      //         ),
      //         label: ""),
      //   ],
      // ),
    );
  }
}
