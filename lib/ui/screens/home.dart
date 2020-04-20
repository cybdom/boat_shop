import 'package:boat_shop/global.dart';
import 'package:boat_shop/ui/screens/details.dart';
import 'package:boat_shop/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: MyColors.accentColor,
          unselectedItemColor: Colors.black12,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Profile")),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), title: Text("Bookmarked")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), title: Text("Cart")),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(9),
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for products...",
              ),
            ),
            SizedBox(height: 9),
            Text(
              "Discover",
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(height: 9),
            SizedBox(
              height: 51,
              child: MainCategoryItem(),
            ),
            SizedBox(height: 9),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: PageView.builder(
                controller: PageController(viewportFraction: .75),
                itemCount: productsList.length,
                itemBuilder: (context, i) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(id: i),
                    ),
                  ),
                  child: FancyContainer(id: i),
                ),
              ),
            ),
            SizedBox(height: 9),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.tune),
                  onPressed: () {},
                ),
                Expanded(
                  child: SizedBox(
                    height: 51,
                    child: Center(
                      child: SubCategoryItem(),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "News",
              style: Theme.of(context).textTheme.title,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: blogPosts.length,
              itemBuilder: (context, i) => ListTile(
                contentPadding: const EdgeInsets.all(9),
                leading: ClipRRect(
                  child: Image.network(
                    "${blogPosts[i].image}",
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
                title: Text(
                  "${blogPosts[i].title}",
                  maxLines: 1,
                ),
                subtitle: Text(
                  "${blogPosts[i].excerpt}",
                  maxLines: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
