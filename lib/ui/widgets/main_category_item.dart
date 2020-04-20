import 'package:boat_shop/global.dart';
import 'package:flutter/material.dart';

class MainCategoryItem extends StatefulWidget {
  const MainCategoryItem({
    Key key,
  }) : super(key: key);

  @override
  _MainCategoryItemState createState() => _MainCategoryItemState();
}

class _MainCategoryItemState extends State<MainCategoryItem> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mainCategories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            _active = i;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          child: Column(
            children: <Widget>[
              Text(
                "${mainCategories[i].name}",
                style: Theme.of(context).textTheme.button.copyWith(
                    color: _active == i ? Colors.black : Colors.black87),
              ),
              _active == i
                  ? Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 1.5,
                      width: 51,
                      decoration: BoxDecoration(
                        color: MyColors.accentColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
