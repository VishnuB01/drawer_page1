// ignore: file_names
import 'package:flutter/material.dart';

class DashboardCont extends StatelessWidget {
  DashboardCont(
      {super.key,
      // required this.priority,
      required this.taskType,
      required this.taskTitle,
      required this.priority});

  final String taskTitle;
  final String priority;
  final String taskType;
  final List RandomImages = [
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'
  ];

  @override
  Widget build(BuildContext context) {
    var priColor;
    if (priority.compareTo("High") == 0) {
      priColor = const Color.fromARGB(129, 235, 73, 73);
    } else if (priority.compareTo("Medium") == 0) {
      priColor = const Color.fromARGB(167, 236, 233, 16);
    } else if (priority.compareTo("Low") == 0) {
      priColor = Color.fromARGB(167, 16, 236, 16);
    }

    var taskTypeColor;
    if (taskType.compareTo("On Track") == 0) {
      taskTypeColor = Color.fromARGB(137, 173, 71, 221);
    } else if (taskType.compareTo("Meeting") == 0) {
      taskTypeColor = Color.fromARGB(136, 73, 71, 221);
    } else {
      taskTypeColor = Color.fromARGB(255, 255, 0, 0);
    }

    return Container(
      margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
      padding: EdgeInsets.zero,
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        // color: Color(0x1f000000),
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(40, 0, 0, 0), width: 4),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskTitle,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Color(0xff212435),
                  size: 24,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 58,
                  height: 30,
                  decoration: BoxDecoration(
                    color: priColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Text(
                    priority,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.all(3),
                  constraints: const BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                    maxHeight: double.infinity,
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: taskTypeColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Text(
                    taskType,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.date_range,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Text("14 oct 2024"),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.link,
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Text("1"),
                      ),
                      const Icon(
                        Icons.message,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("5"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 2; i++)
                            Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundImage: NetworkImage(RandomImages[i]),
                              ),
                            ),
                          if (RandomImages.length > 2)
                            Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundImage: NetworkImage(RandomImages[2]),
                              ),
                            ),
                        ],
                      )

                      // CircleAvatar(
                      //   radius: 13,
                      //   // backgroundColor: Colors.green,
                      //   backgroundImage: AssetImage("assets/images/dice-3.png"),

                      // ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}