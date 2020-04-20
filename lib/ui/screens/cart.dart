import 'package:flutter/material.dart';
import 'package:boat_shop/global.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black45),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text("My Cart", style: Theme.of(context).textTheme.headline),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: MyColors.mainColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: productsList.length,
                      itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: ClipRRect(
                                child: Image.network(productsList[i].image),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            SizedBox(width: 9),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("${productsList[i].name}"),
                                  Text("${productsList[i].price}"),
                                ],
                              ),
                            ),
                            SizedBox(width: 9),
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.add),
                                ),
                                Text("1"),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Subtotal (3 Items)"),
                      SizedBox(width: 15),
                      Text(
                        "\$35,900",
                        style: Theme.of(context).textTheme.title,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      margin: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: MyColors.accentColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Check out",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(Icons.chevron_right),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
