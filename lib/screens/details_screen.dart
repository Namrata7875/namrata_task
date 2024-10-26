import 'package:flutter/material.dart';
import '../model/product_model.dart';
import '../widgets/available.dart';
import 'cart_details.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            child: Column(
              children: [
                Container(
                  child:Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        child: Image.asset(product.image,fit: BoxFit.fill,),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap:(){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back)),
                          SizedBox(width: 250,),
                          Container(
                              height: 30,width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white70,
                              ),
        
                              child: Icon(Icons.home,)),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartDetails()));
                            },
                            child: Container(
                                height: 30,width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white70,
                                ),
                                child: Icon(Icons.card_travel_outlined)),
                          ),
                          SizedBox(width: 20,),
                          Container(
                              height: 30,width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white70,
                              ),
                              child: Icon(Icons.share))
                        ],
                      ),
                      Positioned(
                        bottom: 30,
                        left: 30,
                        child: Container(
                          color: Colors.grey,
                          height:20 ,
                          width: 70,
                          child:Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Text("4.6",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Icon(Icons.favorite_border,color: Colors.red,)
                          ],
                        ),
                        Text(product.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("\$2000",style: TextStyle(color: Colors.grey,),),
                            SizedBox(width: 10,),
                            Text("\$${product.price}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(width: 10,),
                            Text("25% off",style: TextStyle(color: Colors.red,),),
                            SizedBox(width: 10,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Inclusive of all taxes",style: TextStyle(color: Colors.green),),
                        SizedBox(height: 20,),
                        Text("Available Options",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 196,
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.card_travel_outlined,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text("Add To Bag",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 196,
                              color: Colors.greenAccent,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite_border,color: Colors.green,),
                                    SizedBox(width: 10,),
                                    Text("wishlist",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Selected Size:XS",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                            Text("Size Chart",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Available(size: "XS",),
                            Available(size: "S"),
                            Available(size: "M"),
                            Available(size: "L"),
                            Available(size: "XL"),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Delivery and services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 230,
                                decoration: BoxDecoration(border:Border.all(
                                    color: Colors.black,
                                    width: 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.card_travel_outlined,color: Colors.white,),
                                      SizedBox(width: 10,),
                                      Text("Enter Pincode",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 50,
                                width: 110,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ]),
                         SizedBox(height: 10,),
                         Text("Description",style: TextStyle(color: Colors.black,
                         fontWeight: FontWeight.bold,fontSize: 20),),
                         Text("Fabric is cloth or other material produced by weaving together cotton, nylon, wool, silk, or other threads. Fabrics are used for making things such as clothes, curtains, and sheets. ... small squares of red cotton fabric. Whatever your colour scheme, there's a fabric to match."
                         ,style: TextStyle(color: Colors.black),)
        
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
