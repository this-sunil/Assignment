import 'package:Assignment/Service/product.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class CartScreen extends StatefulWidget {
  final List<Product> product;
  const CartScreen({Key key, this.product}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool edit = false;
  List<Product> products;
  @override
  void initState() {
    super.initState();
    edit = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: edit
          ? ListView.builder(
              itemCount: widget.product.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(widget.product[index].image)),
                    title: Text(widget.product[index].name),
                    subtitle: Text("Rs. " + widget.product[index].price),
                    trailing: IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.delete_outline),
                        onPressed: () {
                          setState(() {
                            widget.product.removeAt(index);
                          });
                        }),
                  ),
                );
              },
            )
          : Container(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          label: Text("${widget.product.length} " + 'Done'),
          onPressed: () {
            setState(() {
              dialog(context);
            });
          }),
    );
  }

  dialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Your order has been placed sucessfully"),
            actions: <Widget>[
              FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    });
                  }),
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        });
  }
}
