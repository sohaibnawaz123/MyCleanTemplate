import 'package:collection/collection.dart';


class {{name.pascalCase()}}RequestModel {
  String? userMessage;
  bool? status;

  {{name.pascalCase()}}RequestModel({this.userMessage, this.status});

  factory {{name.pascalCase()}}RequestModel.fromJson(Map<String, dynamic> json) => {{name.pascalCase()}}RequestModel(
        userMessage: json['userMessage'] as String?,
        status: json['status'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'userMessage': userMessage,
        'status': status,
      };

}
