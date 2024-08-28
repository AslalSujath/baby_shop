import 'package:baby_shop/Screen/Item_View.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
       shrinkWrap: true,
       childAspectRatio: 0.76,
       children: [
      for (int i=1;i<5;i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(15, 241, 26, 26),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 245, 227, 227).withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              )
            ]
          ),
          child: Column(
            children: [
              InkWell(        
                onTap:(){
                  Navigator.of(context ).push(MaterialPageRoute(builder: (context) => ItemView())); 
                },        
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.car_repair,
                    color: const Color.fromARGB(255, 117, 84, 146),
                    size: 72,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Baby & Kids Item",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),

                ),
            ],
          ),
        ),
       ],
       );
  }
}