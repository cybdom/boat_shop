import 'package:boat_shop/global.dart';
import 'package:flutter/material.dart';

class FancyContainer extends StatefulWidget {
  final int id;

  const FancyContainer({Key key, this.id}) : super(key: key);
  @override
  _FancyContainerState createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 11),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            top: 50,
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.mainColor,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.mainColor,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    "${productsList[widget.id].image}",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${productsList[widget.id].name}",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            Text(
                              "${productsList[widget.id].price}",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: MyColors.accentColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
