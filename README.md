# Pop Bottom Menu

A flutter copy of the bottom sheet menu you can find on Instagram.

<img src="https://user-images.githubusercontent.com/51706943/100249907-5fb2dc80-2f3d-11eb-9ea2-57f80e16c2a6.gif"  height="600"/>

## How to use
After adding the dependancy to your ```pubspec.yaml```, import it in your class :

```dart
import 'package:pop_bottom_menu/pop_bottom_menu.dart';
```

Return the ```PopBottomMenu()``` in the builder of a ```showModalBottomSheet``` like that :



```dart

 void _showMenu() {
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

```

Then just call the function from where you want, like from a button :


```dart
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
```



