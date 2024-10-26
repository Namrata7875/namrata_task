import 'package:flutter/material.dart';
class Available extends StatelessWidget {
  final String size;
  const Available({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.greenAccent.shade100,
        border: Border.all(color: Colors.black,),
      ),
      child: Center(child: Text(size,style: TextStyle(color: Colors.black,
        fontSize:20,fontWeight: FontWeight.bold,),)),
    );
  }
}

