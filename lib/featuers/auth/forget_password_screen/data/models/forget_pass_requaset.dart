import 'package:json_annotation/json_annotation.dart';
part 'forget_pass_requaset.g.dart';

@JsonSerializable()
class ForgetPassRequaset {
  String email;
  ForgetPassRequaset({
    required this.email,
  });
  Map<String, dynamic> toJson() => _$ForgetPassRequasetToJson(this);
}
