import 'package:flutter/material.dart';
import 'package:trogon_machine_test/main.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("JOHN DOE"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: appColors.color122E57
              ),
              child: Text("messsage"),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 15,
        height: screenUtil.screenHeight / 9,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: CircleAvatar(
                    backgroundColor: appColors.colorE0E0E0.withOpacity(0.4),
                    child: Icon(Icons.keyboard),
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: CircleAvatar(
                    backgroundColor: appColors.colorE0E0E0.withOpacity(0.4),
                    child: Icon(Icons.arrow_forward_ios_rounded),
                  )),
            ]),
      ),
    );
  }
}
