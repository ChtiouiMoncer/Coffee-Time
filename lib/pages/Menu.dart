import 'package:coffee_time/constants/CoffeeList.dart';
import 'package:coffee_time/pages/Cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import '../constants/CoffeeList.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  BuildContext context;
  List<CoffeeList> _cartItems = [];
  List<int> indexList = new List();
  int _cartItemCount = 0;

  void _addProduct(CoffeeList item) {
    setState(() {
      bool isPresent = false;
      for (CoffeeList i in _cartItems) {
        if (i.id == item.id) {
          isPresent = true;
          _cartItems.remove(i);
          indexList.remove(item.id);
          break;
        }
      }
      if (!isPresent || (_cartItems.isEmpty && _cartItemCount == 0)) {
        _cartItems.add(item);
        indexList.add(item.id);
        print(indexList.toString());
      }
      _cartItemCount = _cartItems.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 10),
      appBar: AppBar(
        title: Text('Coffee Time'),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              IconButton(
                onPressed: () => {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return Cart(_cartItems);
                      }))
                    },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                  size: 25.0,
                ),
              ),
              CircleAvatar(
                child: Text(
                  "$_cartItemCount",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                backgroundColor: Colors.black,
                radius: 8.0,
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
                elevation: 15,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: Carousel(
                        images: [
                          NetworkImage(
                              'https://i.pinimg.com/originals/6e/51/09/6e5109237aa9f5fd0b450f1590e8ad2b.jpg'),
                          NetworkImage(
                              'http://www.qub.ac.uk/home/media/Media,843105,en.jpg'),
                          NetworkImage(
                              'https://st4.depositphotos.com/14582236/22073/v/1600/depositphotos_220730942-stock-illustration-cold-brewed-coffee-banner-ads.jpg'),
                          NetworkImage(
                              'http://1.bp.blogspot.com/-7utb_KgO_-Y/UAT7-QCAl-I/AAAAAAAAAU8/ezP-UIZ212s/s1600/i-love-coffee-facebook-banner.jpg'),
                          NetworkImage(
                              'https://vinylbannersprinting.co.uk/wp-content/uploads/2016/05/RB05-AA-demo.png'),
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.white,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.transparent,
                        borderRadius: false,
                      ),
                    ),
                  ],
                )
                ),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: allCoffee.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: Stack(
                        alignment: Alignment.topRight,
                    children: <Widget>[
                      InkWell(
                        onTap: () => _addProduct(allCoffee[index]),
                        child: Column(
                          children: <Widget>[
                            FadeInImage.assetNetwork(
                              fit: BoxFit.fitHeight,
                              placeholder: 'assets/loading.gif',
                              image: allCoffee[index].image,
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    allCoffee[index].name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    "Price: ${allCoffee[index].price} DT",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Opacity(
                        opacity:
                            indexList.contains(allCoffee[index].id) ? 1.0 : 0.0,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                          
                          radius: 10,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
