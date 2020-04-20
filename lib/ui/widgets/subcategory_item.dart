import 'package:boat_shop/global.dart';
import 'package:flutter/material.dart';

class SubCategoryItem extends StatefulWidget {
  const SubCategoryItem({
    Key key,
  }) : super(key: key);

  @override
  _SubCategoryItemState createState() => _SubCategoryItemState();
}

class _SubCategoryItemState extends State<SubCategoryItem> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subCategories.length,
      itemBuilder: (context, i) => Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _active = i;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(right: 11),
            decoration: BoxDecoration(
              color: _active == i
                  ? MyColors.accentColor
                  : Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(9),
            ),
            padding: const EdgeInsets.all(9),
            child: Text(
              "${subCategories[i].name}",
              style: Theme.of(context).textTheme.button.copyWith(
                    color: _active == i ? Colors.white : Colors.blueGrey,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
