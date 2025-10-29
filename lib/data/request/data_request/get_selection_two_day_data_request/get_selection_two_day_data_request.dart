import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_selection_two_day_data_request.freezed.dart';
part 'get_selection_two_day_data_request.g.dart';

@freezed
abstract class GetSelectionTwoDayDataRequest
    with _$GetSelectionTwoDayDataRequest {
  factory GetSelectionTwoDayDataRequest({
    required String stationId,
    required String firstDay,
    required String secondDay,
  }) = _GetSelectionTwoDayDataRequest;
  factory GetSelectionTwoDayDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSelectionTwoDayDataRequestFromJson(json);
}
