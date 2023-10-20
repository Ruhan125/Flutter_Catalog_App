
class CatalogModel{
 static  List<Item> items = [Item(
    id: 01,
    name: "Iphone 12 Pro",
    desc: "Apple Iphone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://www.reliancedigital.in/medias/Apple-12-Smartphones-491901536-i-1-1200Wx1200H-300Wx300H?context=bWFzdGVyfGltYWdlc3w0NTIzNHxpbWFnZS9qcGVnfGltYWdlcy9oMzQvaGE1Lzk0MDc3NDY0NDEyNDYuanBnfDA3MmMxMTU3MzQ0M2ViMjdlMTMwNjlkZGMxOWMyNDViYjdiODJiYjZlNDExYzM4ZTQwYzQxOGZiNTk4MjMyNTk"




)];

}



class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});


  factory Item.fromMap(Map<String, dynamic>map){
   return  Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"],

    );
  }

  toMap() =>{
    "id" : id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,



  };

}

