import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {
        Navigator.pop(context);
      },
      builder: (context) {
        return Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            height: 500,
            child: Column(
              children: <Widget>[
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      labelText: 'Add new task',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                      )),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                    Colors.lightBlueAccent,
                  )),
                  onPressed: () {},
                  child: Text(
                    'Add task',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
