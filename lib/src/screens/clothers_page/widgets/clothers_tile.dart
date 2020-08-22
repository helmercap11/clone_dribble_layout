import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/models/products.dart';
import 'package:flutter/material.dart';

List<Product> productList = [
  Product(name: "T-shirt", image: "Shirt.png", price: "2", sexo: "Men"),
  Product(name: "Pants", image: "Pants.png", price: "2", sexo: "Men"),
  Product(name: "Dress", image: "Dress.png",price: "2", sexo: "Woman"),
  Product(name: "Short", image: "Short.png",price: "2", sexo: "Men"),
  Product(name: "Coat", image: "Coat.png", price: "2", sexo: "Men"),
  Product(name: "Skirt", image: "Skirt.png",price: "2", sexo: "Woman"),
 
  
];

class ClothersTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Container(
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 15, bottom: 10, left: 15),
                  height: 65,
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: Container(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Image.asset(
                                "assets/images/clothes/${productList[index].image}",
                              ),
                            ),
                          )),
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productList[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              /* Text(
                                              "\$2",
                                              style: TextStyle(color: Colors.red),
                                            ),*/
                              Spacer(),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  
                                  children: [
                                    Container(
                                      child: Text(
                                        "\$ ${productList[index].price}",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        productList[index].sexo,
                                        style: TextStyle(
                                            color: GlobalConstUI.greyColor),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                          flex: 3,
                          child: Container(
                            padding:
                                EdgeInsets.only(bottom: 15, left: 45, top: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: GlobalConstUI.primaryColo,
                                    //radius: 20,
                                    child: IconButton(
                                        padding: EdgeInsets.only(bottom: 20),
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: GlobalConstUI.primaryColo,
                                    child: IconButton(
                                        padding: EdgeInsets.only(bottom: 20),
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
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
