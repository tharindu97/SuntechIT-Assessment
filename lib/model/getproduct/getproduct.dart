import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart' show Dio, ResponseType, Options, RequestOptions;

part 'getproduct.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(Dio dio) = _ProductClient;

  @GET('/product/list')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
  })
  Future<ResponceProduct> getAllProduct(@Header('Authorization') String token);
}

@JsonSerializable()
class ResponceProduct {
  ResponceProduct({
    required this.status,
    required this.title,
    required this.message,
    required this.data,
  });

  late final int status;
  late final String title;
  late final String message;
  late final List<ProductDetails> data;

  ResponceProduct.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json['message'];
    title = json['title'];
    data = json['body']['data'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['title'] = title;
    _data['body']['data'] = data;
    return _data;
  }
}

@JsonSerializable(explicitToJson: true)
class ProductDetails {
  ProductDetails({
    required this.id,
    required this.name,
    required this.email,
    required this.rating,
    required this.actualPrice,
    required this.sellingPrice,
    required this.details,
    required this.imageResourceUrl,
    required this.colorsList,
  });

  late final int id;
  late final String name;
  late final String email;
  late final int rating;
  late final int actualPrice;
  late final int sellingPrice;
  late final String details;
  late final String imageResourceUrl;
  late final List<String> colorsList;

  ProductDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    rating = json['rating'];
    actualPrice = json['actualPrice'];
    sellingPrice = json['sellingPrice'];
    details = json['details'];
    imageResourceUrl = json['imageResourceUrl'];
    colorsList = json['colorsList'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['rating'] = rating;
    _data['actualPrice'] = actualPrice;
    _data['sellingPrice'] = sellingPrice;
    _data['details'] = details;
    _data['imageResourceUrl'] = imageResourceUrl;
    _data['colorsList'] = colorsList;
    return _data;
  }
}
