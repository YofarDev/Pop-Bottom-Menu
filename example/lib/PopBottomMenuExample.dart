import 'package:flutter/material.dart';
import 'package:pop_bottom_menu/pop_bottom_menu.dart';

class PopBottomMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          child: FlatButton(
            onPressed: () => _showMenu(context),
            child: Text("Open Pop Bottom Menu",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ),
      ),
    );
  }

  _showMenu(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return PopBottomMenu(
          title: TitlePopBottomMenu(
            label: "yofardev",
          ),
          items: [
            ItemPopBottomMenu(
              onPressed: () => print("friend list"),
              label: "Add to Close Friends List",
              icon: Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ),
            ItemPopBottomMenu(
              onPressed: () => print("notifications"),
              label: "Notifications",
              icon: Icon(
                Icons.navigate_next,
                color: Colors.grey,
              ),
            ),
            ItemPopBottomMenu(
              onPressed: () => print("mute"),
              label: "Mute",
              icon: Icon(
                Icons.navigate_next,
                color: Colors.grey,
              ),
            ),
            ItemPopBottomMenu(
              onPressed: () => print("unfollow"),
              label: "Unfollow",
            ),
          ],
        );
      },
    );
  }

}
