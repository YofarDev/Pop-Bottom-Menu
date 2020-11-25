import 'package:flutter/material.dart';

class PopBottomMenu extends StatelessWidget {
  final TitlePopBottomMenu title;
  final List<ItemPopBottomMenu> items;
  final Color backgroundColor;

  PopBottomMenu({
    @required this.title,
    @required this.items,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var list = [_header(title)];
    list.addAll(_getList());
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
      child: Container(
        color: (backgroundColor != null) ? backgroundColor : Colors.white,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Column(
              children: list,
            ),
          ],
        ),
      ),
    );
  }

  Widget _header(TitlePopBottomMenu title) => Column(
    children: [
      Container(
        height: 10,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 5,
          width: 40,
          color: Color(0x80808080),
        ),
      ),
      GestureDetector(
        onTap: title.onPressed,
        child: Container(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            title.label,
            textAlign: TextAlign.center,
            style: (title.style == null)
                ? TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
                : title.style,
          ),
        ),
      ),
      Container(
        height: 1,
        color: Color(0x1A1A1A1A),
      ),
    ],
  );

  Widget _getItem(ItemPopBottomMenu item, int index) => Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: item.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.label,
                style: (item.style == null)
                    ? TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
                    : item.style),
            (item.icon != null) ? item.icon : Container(),
          ],
        ),
      ));

  List<Widget> _getList() =>
      items.map((e) => _getItem(e, items.indexOf(e))).toList();
}

class ItemPopBottomMenu {
  String label;
  TextStyle style;
  Icon icon;
  VoidCallback onPressed;

  ItemPopBottomMenu({
    @required this.label,
    this.style,
    this.icon,
    this.onPressed,
  });
}

class TitlePopBottomMenu {
  String label;
  TextStyle style;
  VoidCallback onPressed;

  TitlePopBottomMenu({
    @required this.label,
    this.style,
    this.onPressed,
  });
}
