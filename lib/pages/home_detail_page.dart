import 'package:calatogapp/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';


class HomeDetailpage extends StatelessWidget {

  final Item catalog;
  const HomeDetailpage({Key? key, required this.catalog}) :assert(catalog != null) ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(onPressed:(){},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor)
              ),
              child: "Add to cart".text.xl.make(),).wh(120, 50)
          ],

        ).p32(),
      ),
      body: SafeArea(

        child: Column(


          children: [
            Hero(
              tag: Key(catalog.id.toString()),

                child: Image.network(catalog.image)).h32(context),

            Expanded(child: VxArc(

              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,


              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                    catalog.desc.text.lg.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "This is a very good product. New in market.You can just buy and enjoy to use it . We provide 2 years of warrenty and 1 year replacement warrenty on our product. So add it to your cart and enjoy.".text.center.xl.make(),
                  ],
                ).py64(),
              ),
            ),),
          ],
        ),
      ),
      
    );
  }
}
