import 'package:flutter/material.dart';
import '../model/my_product.dart';
import '../widgets/product_card.dart';
import 'details_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text("Kurta set"),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (100 / 140),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12),
            scrollDirection: Axis.vertical,
            itemCount: MyProducts.allProducts.length,
            itemBuilder: (context,index){
              final allProducts = MyProducts.allProducts[index];
              return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: allProducts,)));
                  },
                  child: ProductCard(product: allProducts));
            })
    );
  }
}
