import 'package:GGdemo/models/data_list.dart';
import 'package:flutter/material.dart';

class ProductTemplateItem extends StatelessWidget {
  ProductTemplateItem({this.productsList, this.index});
  final DataList productsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(productsList.productsList[index].productPhoto, fit: BoxFit.cover),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productsList.productsList[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(productsList.productsList[index].postedDate.toString(), style: TextStyle(fontSize: 12.0),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}