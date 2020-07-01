import 'package:GGdemo/models/category.dart';
import 'package:GGdemo/models/condition.dart';

class Product {
	final String productId;
	final String title;
	final String productPhoto;
	final double price;
	final Category categoryId;
	final Condition conditionId;
	final String description;
	final DateTime postedDate;
	final bool status;

  Product({this.productId, this.title, this.productPhoto, this.price, this.categoryId, this.conditionId, this.description, this.postedDate, this.status});
}