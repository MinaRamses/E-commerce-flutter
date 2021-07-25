import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateGrid(),
    );
  }
}

Widget CreateGrid(){
  return Scaffold(
    backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
    body: SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget> [
          CreateContainer('https://img.freepik.com/free-photo/pretty-young-stylish-sexy-woman-pink-luxury-dress-summer-fashion-trend-chic-style-sunglasses-blue-studio-background-shopping-holding-paper-bags-talking-mobile-phone-shopaholic_285396-2957.jpg?size=626&ext=jpg', 'Fashion'),
          CreateContainer('https://www.homeappliancesworld.com/files/2015/09/home-appliance1.jpg','Electronics'),
          CreateContainer('https://img.freepik.com/free-photo/newborn-toddler-boy-laughing-bed_115594-1502.jpg?size=626&ext=jpg', 'Baby Products'),
          CreateContainer('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-nlnP1pWxRreXHBdGIxjvLtwrGl9L-4OTjw&usqp=CAU','Health & Beauty'),
          CreateContainer('https://shop.orange.eg/content/images/thumbs/0002719_iphone-12-mini_550.jpeg', 'Phones'),
          CreateContainer('https://welpmagazine.com/wp-content/uploads/2020/10/supermarket.jpg', 'Supermarket'),
        ],
      ),
    ),
  );
}

Widget CreateContainer(String s, String t){
  return InkWell(
    child: Container(
      child: Stack(
          clipBehavior: Clip.none, children: <Widget>[
            Container(
              child: Image.network(s,
                fit:  BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            Positioned(
               bottom: 85,
               left: 18,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.black,
                  color: Color.fromRGBO(224, 224, 224, 1.0),
                ),
                height: 30,
                width: 170,
              )
              ),
            Container(
              alignment: Alignment.center,
              child: Text(t,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ]
      ),
    ),
    onTap: (){
      print("pressed");
    },
  );
}