part of 'OrderModel.dart';

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  // final buffer = json['coverImage']["data"]["data"];
  print(json.toString());
  // List<int> buffer = json;
  return OrderModel(
    name: json['name'] as String, //name will store in name variable
    price: json['price'] as int,
    patty: json['patty'] as int,
    cheese: json['cheese'] as int,
    lettuce: json['lettuce'] as int,
    tomato: json['tomato'] as int,
    onion: json['onion'] as int,

    id: json['_id'] as String,
  );
}

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'patty': instance.patty,
      'cheese': instance.cheese,
      'lettuce': instance.lettuce,
      'tomato': instance.tomato,
      'onion': instance.onion,
      '_id': instance.id,
    };
