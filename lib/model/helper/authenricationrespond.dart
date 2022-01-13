import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Responce {
  Responce({
    required this.status,
    required this.title,
    required this.message,
    required this.token,
  });
  late final int status;
  late final String title;
  late final String message;
  late final String token;

  Responce.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json['message'];
    title = json['title'];
    token = json['body']['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['title'] = title;
    _data['body']['token'] = token;
    return _data;
  }
}
