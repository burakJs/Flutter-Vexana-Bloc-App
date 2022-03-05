import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'response_model.g.dart';

@JsonSerializable()
class UserResponseModel extends INetworkModel {
  int? page;

  @JsonKey(name: 'per_page')
  int? perPage;

  int? total;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  List<Data>? data;
  Support? support;

  UserResponseModel({this.page, this.perPage, this.total, this.totalPages, this.data, this.support});
  @override
  fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}

@JsonSerializable()
class Data extends INetworkModel {
  int? id;
  String? email;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Support extends INetworkModel {
  String? url;
  String? text;

  Support({this.url, this.text});

  factory Support.fromJson(Map<String, dynamic> json) => _$SupportFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SupportToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$SupportFromJson(json);
}
