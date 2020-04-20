import 'package:boat_shop/global.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
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
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(9),
              children: <Widget>[
                Text("${productsList[id].name}",
                    style: Theme.of(context).textTheme.headline),
                SizedBox(height: 5),
                Text("${productsList[id].price}",
                    style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Specifications",
                              style: Theme.of(context).textTheme.subtitle),
                          SizedBox(height: 9),
                          ...List.generate(
                            productsList[id].productSpecification.length,
                            (i) => Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: MyColors.accentColor),
                                      borderRadius: BorderRadius.circular(3)),
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                      productsList[id].productSpecification[i]
                                          ['icon'],
                                      color: MyColors.accentColor),
                                ),
                                SizedBox(width: 9),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${productsList[id].productSpecification[i]['value']}",
                                      style:
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                      "${productsList[id].productSpecification[i]['name']}",
                                      style:
                                          Theme.of(context).textTheme.overline,
                                    ),
                                    SizedBox(height: 9)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        productsList[id].topShot,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text("Features", style: Theme.of(context).textTheme.subtitle),
                ...List.generate(
                  productsList[id].features.length,
                  (i) => Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                              color: MyColors.accentColor,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                            child: Text("${productsList[id].features[i]}")),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'cart'),
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
                    "Buy now",
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
    );
  }
}
