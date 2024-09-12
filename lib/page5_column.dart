import 'package:flutter/material.dart';
import 'package:drawer_page1/page4_column.dart';
// import 'package:drawer_page1/retrive_data_from_form/user_data.dart';

class Page5Column extends StatelessWidget {
  final UserData userData;

  const Page5Column({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            border: TableBorder.all(),
            children: [
              const TableRow(
                children: [
                  TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Field', style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                  TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Value', style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name'),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userData.name),
                  )),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Email'),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userData.email),
                  )),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Password'),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userData.password),
                  )),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Subscribed'),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userData.isSubscribed ? 'Yes' : 'No'),
                  )),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Agreed to Terms'),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userData.agreedToTerms ? 'Yes' : 'No'),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}