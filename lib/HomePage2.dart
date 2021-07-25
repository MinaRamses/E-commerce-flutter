import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateHomePageItem()
      );
  }
}

Widget CreateHomePageItem(){
  return Scaffold(
    appBar: AppBar(
      title: Text(
        "Products"
      ),
    ),
    backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
    body: SafeArea(
      child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: <Widget> [
            CreateItem('https://images.solecollector.com/complex/images/c_crop,h_907,w_1369,x_92,y_26/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/cu0egwymashlf8rwovrf/dior-air-jordans-2', 'Air Jordan Dior', 'Air Jordan 1 Retro High Dior which is sold as a collaboration between Nike and Dior', 7899),
            CreateItem('https://cdn.shopify.com/s/files/1/0408/9909/collections/marcelo-burlon.jpg?v=1613423429', 'Marcelo Burlon', 'Marcelo Burlon wing t-shirt', 4200),
            CreateItem('https://alarm-stores.com/wp-content/uploads/2020/11/iPhone-12-Pro-Max.jpg', 'Apple', 'iphone 12 pro 265gb color blue Etisalat numbers only', 16860),
            CreateItem('https://www.mepal.com/us/604/0/0/1/ffffff00/c7f95583/19b6c95be78ee325ee810d6db7541601ca6c4d99173f8db31f2b5ef6da3184e2/water-bottle-campus-500-ml-green.jpg', 'Mepal', 'Water bottle that keeps water temp up to 20 hours ', 160),

          ]
      ),
    ),
  );
}

Widget CreateItem(String s, String t1, String t2, int p){
  return InkWell(
      child: Container(
        // height: 500,
        // width: 500,
        child: Column(
          children: [
            Container(
              child: Image.network(s,
                //fit:  BoxFit.cover,
                 width: 350,
                 height: 130,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(t1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(t2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red
                            ),

                            child: Icon(Icons.add,
                              color: Colors.white,
                            ),

                          //   child: IconButton(
                          //       icon: Icon(Icons.add,
                          //         color: Colors.white,),
                          //       onPressed: (){
                          //
                          //   }),

                           ),
                          onTap: (){
                            print('pressed');
                          },
                        ),
                        Text('$p EGP'),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
  );
}

