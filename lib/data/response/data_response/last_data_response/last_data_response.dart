// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'last_data_response.freezed.dart';
part 'last_data_response.g.dart';

@freezed
abstract class LastDataResponse with _$LastDataResponse {
  factory LastDataResponse({
    required int totalDocs,
    required int totalPages,
    required int currentPage,
    required int? nextPage,
    required List<LastData> data,
  }) = _LastDataResponse;
  factory LastDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LastDataResponseFromJson(json);
}
