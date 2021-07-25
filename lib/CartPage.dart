import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateCartItem(),
    );
  }
}

Widget CreateCartItem(){
  return Scaffold(
    appBar: AppBar(
      title: Text('Cart'),
    ),
    body: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Total Order = 24,919 EGP '),
          leading: ElevatedButton.icon(onPressed : (){},
              icon: Icon(Icons.monetization_on_outlined),
              label: Text('Click to Checkout')),
        ),
        // SizedBox(
        //   height: 40,
        // ),


        Column(
          children: <Widget>[

            ListTile(
              title: Text('iPhone 12 Pro'),
              subtitle: Text('Price: 16,860 EGP'),
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: Image(image: AssetImage('images/iphone12.png'), fit: BoxFit.cover),
              ),
              trailing: Icon(Icons.close_sharp),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Text("-"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("+"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Nike Air Jordan Dior'),
              subtitle: Text('Price: 7,899 EGP'),
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: Image(image: AssetImage('images/nikeair.png'), fit: BoxFit.cover),
              ),
              trailing: Icon(Icons.close_sharp),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Text("-"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("+"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Mepale'),
              subtitle: Text('Price: 160 EGP'),
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: Image(image: AssetImage('images/mepale.png'), fit: BoxFit.cover),
              ),
              trailing: Icon(Icons.close_sharp),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Text("-"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("+"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

          ],
        ),
      ],

    ),
  );
}

