import 'package:Assignment/Screen/CartScreen.dart';
import 'package:Assignment/Service/product.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  List<Product> product;
  @override
  void initState() {
    super.initState();
    product = mobile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            child: Card(
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: 500,
                      height: 130,
                      child:
                          Image.asset(product[index].image, fit: BoxFit.cover)),
                  SizedBox(height: 5),
                  Positioned(
                      top: 140,
                      left: 50,
                      child: Center(
                          child: Text(
                        product[index].name,
                        textAlign: TextAlign.center,
                      ))),
                  SizedBox(height: 5),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rs. " + product[index].price,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )),
                  SizedBox(height: 2),
                  Positioned(
                    top: 160,
                    left: 60,
                    bottom: 10,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.pink,
                        child: Text("Add to Cart",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          setState(() {
                            if (product.length > 0) {
                              product.add(Product(
                                  name: product[index].name,
                                  image: product[index].image,
                                  price: product[index].price));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CartScreen(product: product)));
                            }
                            return product;
                          });
                        }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          label: Text("${product.length} " + 'Check Out'),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen(product: product)));
            });
          }),
    );
  }
}
