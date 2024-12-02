import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_project/page/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Test', style: TextStyle(color: Colors.white),),
                  ),
                );
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return DialogCustom(context);
                  },
                );
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Simple Dialog'),
                      contentPadding: EdgeInsets.all(10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Title X'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Close Dialog'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Do you want to Save??'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Confirm'),
                          ),
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Do you want to Save??'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Confirm'),
                          ),
                        ],
                      );
                    }
                  },
                );
              },
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CupertinoTimerPicker(
                            onTimerDurationChanged: (value) {});
                      });
                } else {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  log('The selected time was $selectedTime');
                }
              },
              child: Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                log('The date selected was $selectedDate');
              },
              child: Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.flutter_dash),
                );
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
