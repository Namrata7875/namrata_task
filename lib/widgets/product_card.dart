import 'package:flutter/material.dart';
import 'package:flutter_task/model/my_product.dart';
import '../model/product_model.dart';
class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /2,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 200,
                  child: Image.asset(widget.product.image,fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 140,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                InkWell(
                  onTap: (){

                  },
                    child: Icon(Icons.favorite_border,
                      color:Colors.red,))
              ],
            ),
            Text(widget.product.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            Text("\$${widget.product.price}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ]
      ),
    );
  }
}
