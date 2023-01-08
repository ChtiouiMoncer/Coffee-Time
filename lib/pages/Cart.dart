import 'package:coffee_time/constants/CoffeeList.dart';
import 'package:coffee_time/pages/Table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Cart extends StatefulWidget {
  final List<CoffeeList> cartItems;
  Cart(this.cartItems) : super();
  @override
  _CartState createState() => _CartState();
}



class _CartState extends State<Cart> {
  double total = 0;
  BuildContext context;
  @override
  void initState() {
    super.initState();
    double sum = 0;
    for (CoffeeList item in widget.cartItems) {
      sum += (item.quantity * item.price);
    }
    total = sum;
  }



  void calculateTotal() {
    setState(() {
      double sum = 0;
      for (CoffeeList item in widget.cartItems) {
        sum += (item.quantity * item.price);
      }
      total = sum;
    });
  }

  int id=1;
  String state ="NOT DELIVERED";
  void addData(){
    var url="http://10.0.2.2/shop/coffe-shop.php";
    http.post(url, body: {
      "id_comm":id.toString(),
      "total_comm":total.round().toString(),
      "state":state.toString()  });
    var url2="http://10.0.2.2/shop/insert2.php";
    for (var index=0; index < widget.cartItems.length; index++) {
      http.post(url2, body: {
        "nom_prod":widget.cartItems[index].name,
        "qte":widget.cartItems[index].quantity.toString(),
        "id_comm":id.toString()

      });
    }
    id=id+1;
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 10),
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Text("${widget.cartItems.length}"),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Totals:"),
                subtitle: Text(" $total DT"),
              ),
            ),
            Expanded(
                child: MaterialButton(
                  onPressed: () => {

                    addData(),
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                          return DropDown(total,id);
                        }))
                  },
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(widget.cartItems[index].name),
                    subtitle: Text(" ${widget.cartItems[index].price} DT"),
                    leading: FadeInImage.assetNetwork(
                      fit: BoxFit.fitWidth,
                      width: 80,
                      height: 80,
                      placeholder: 'assets/loading.gif',
                      image: widget.cartItems[index].image,
                    ),
                    trailing: Column(
                      children: <Widget>[
                        Expanded(child:  IconButton(
                          icon: Icon(Icons.arrow_drop_up),
                          onPressed: () {
                            setState(() {
                              widget.cartItems[index].quantity++;
                              calculateTotal();
                            });
                          },
                        ),),

                        Text("${widget.cartItems[index].quantity}",
                        ),
                        Expanded(child:  IconButton(
                          icon: Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            setState(() {
                              widget.cartItems[index].quantity--;
                              if (widget.cartItems[index].quantity > 0)
                                calculateTotal();
                              else {
                                calculateTotal();
                                widget.cartItems[index].quantity = 1;
                                widget.cartItems.removeAt(index);
                              }
                            });
                          },
                        ),),

                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
