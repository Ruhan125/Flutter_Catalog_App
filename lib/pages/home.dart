import 'package:calatogapp/models/catalog.dart';
import 'package:calatogapp/utils/routes.dart';
import 'package:calatogapp/widgets/drawer.dart';
import 'package:calatogapp/widgets/item_widget.dart';
import 'package:calatogapp/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';






class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final num days = 30;

  final String name = "Ruhan";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async
  {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:context.cardColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.darkBluishColor,
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute) ,
        child: Icon(CupertinoIcons.cart) ,
      ),

      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CatalogHeader(),

              if(CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(child: CircularProgressIndicator())




            ],

          ),
        ),
      ),
    );
  }

}









