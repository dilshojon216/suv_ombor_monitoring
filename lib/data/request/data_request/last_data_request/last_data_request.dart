import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_data_request.freezed.dart';
part 'last_data_request.g.dart';

@freezed
abstract class LastDataRequest with _$LastDataRequest {
  factory LastDataRequest({
    required int page,
    required int perPage,
  }) = _LastDataRequest;

  factory LastDataRequest.fromJson(Map<String, dynamic> json) =>
      _$LastDataRequestFromJson(json);
}
