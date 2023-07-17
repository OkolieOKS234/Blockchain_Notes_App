import List "mo:base/List";
import Debug "mo:base/Debug";
import Blob "mo:base/Blob";
import Nat "mo:base/Nat";
import Text "mo:base/Text";


actor weShop{

public type shoppingCategory = {
title : Text;
avatarImage: Blob;

};

public type itemUpload = {
    name: Text;
description: Text;
tags: [Text];
price: Nat;
quantity: Nat

};





var cat: List.List<shoppingCategory> = List.nil<shoppingCategory>();
var item: List.List<itemUpload> = List.nil<itemUpload>();

public func createCategory(titleText: Text, avatarImageBlob: Blob){
let newCategory: shoppingCategory = {
    title = titleText;
    avatarImage = avatarImageBlob;
};
cat := List.push(newCategory, cat);
};

public func uploadItem(itemName: Text, itemDescription: Text, itemTags: [Text], itemPrice: Nat, itemQuantity: Nat)
{
let newItem: itemUpload = {
    name = itemName;
      description = itemDescription;
      tags = itemTags;
      price = itemPrice;
      quantity = itemQuantity;
    };
item :=List.push(newItem, item);
Debug.print(debug_show(item));



}








};