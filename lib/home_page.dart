import 'package:GGdemo/data/category_data.dart';
import 'package:GGdemo/data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:GGdemo/widgets/category_template.dart';
import 'package:GGdemo/widgets/product_template_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0.0,
         title: Text('Ganar Ganar'),
         centerTitle: true,
         actions: [
           Icon(Icons.search)
         ],
       ),
       drawer: Drawer(
         child: Container(),
       ),
       body: CustomScrollView(
         slivers: [
           SliverToBoxAdapter(
             child: Container(
               padding: EdgeInsets.only(left: 10.0),
               height: 120.0,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: categoriesList.categoriesList.length,
                 itemBuilder: (context, index) {
                   return CategoryTemplate(index: index, categoriesList: categoriesList,);
                 },
               ),
             ),
           ),
           SliverStaggeredGrid.countBuilder(
             crossAxisCount: 4,
             itemCount: productsList.productsList.length,
             itemBuilder: (BuildContext context, int index) => ProductTemplateItem(productsList: productsList, index: index,),
             staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
             mainAxisSpacing: 4.0,
             crossAxisSpacing: 4.0,
           )
         ],
       ),
    );
  }
}