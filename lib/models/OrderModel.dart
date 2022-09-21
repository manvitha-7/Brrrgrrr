import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

part 'OrderModel.g.dart';

@JsonSerializable()
class OrderModel {
  String? name;
  int? price;
  int? patty;
  int? cheese;
  int? lettuce;
  int? tomato;
  int? onion;
  @JsonKey(name: "_id")
  String? id;

  OrderModel({
    this.name,
    this.price,
    this.patty,
    this.cheese,
    this.lettuce,
    this.tomato,
    this.onion,
    this.id,
  });
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
