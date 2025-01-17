import 'dart:js_interop';

import 'package:flutter_new/core/store.dart';
import 'package:flutter_new/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {

  // catalog field
  late CatalogModel _catalog;

  //collection of IDs - store Ids of each item
final List<int> _itemIds =[];

//Get Catalog
CatalogModel get catalog => _catalog;

set catalog(CatalogModel newCatalog){
  assert(newCatalog != null );
  _catalog = newCatalog;
}

//Get  items in cart
List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//Get total price
num get totalPice =>
    items.fold(0,(total, current)=> total + current.price);

}

class AddMutation extends VxMutation <MyStore>{
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation <MyStore>{
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}