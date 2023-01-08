import 'package:coffee_time/pages/Payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_time/pages/Payment.dart';
import 'package:http/http.dart' as http;


class DropDown extends StatefulWidget {
  final double total;
  final int id;
  DropDown(this.total,this.id) : super();
  final String title = "Table Select";

  @override
  DropDownState createState() => DropDownState();
}

class Table {
  int id;
  String name;

  Table(this.id, this.name);

  static List<Table> getTables() {
    return <Table>[
      Table(1, 'Table 1'),
      Table(2, 'Table 2'),
      Table(3, 'Table 3'),
      Table(4, 'Table 4 '),
      Table(5, 'Table 5'),
      Table(6, 'Table 6'),
      Table(7, 'Table 7'),
      Table(8, 'Table 8'),


    ];
  }
}


class DropDownState extends State<DropDown> {
  //
  List<Table> _companies = Table.getTables();
  List<DropdownMenuItem<Table>> _dropdownMenuItems;
  Table _selectedCompany;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  void addData(){
    var url="http://10.0.2.2/shop/addtable.php";
    http.post(url, body: {
      "table_comm":_selectedCompany.name,
      "id":widget.id.toString()
     });
    }


  List<DropdownMenuItem<Table>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Table>> items = List();
    for (Table company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Table selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table's Order"),
        centerTitle: true,
      ),
        body: new Container(

          child: Container(
            alignment: Alignment.center,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text("Select The Table's order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(
                  height: 20.0,
                ),
                DropdownButton(
                  value: _selectedCompany,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Selected: ${_selectedCompany.name}',  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red,),),
                SizedBox(

                  height: 20.0,
                ),
                 MaterialButton(
                        height: 50,
                        minWidth: 200,
                      onPressed: () => {
                          addData(),
                        Navigator.of(context).push(
                            CupertinoPageRoute(builder: (BuildContext context) {
                              return Payment(widget.total,_selectedCompany.name.toString());
                            }))
                      },
                      child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      color: Colors.black,
                    ),

              ],
            ),
          ),
        ),
    );
  }
}
