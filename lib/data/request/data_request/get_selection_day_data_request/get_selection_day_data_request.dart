import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_selection_day_data_request.freezed.dart';
part 'get_selection_day_data_request.g.dart';

@freezed
abstract class GetSelectionDayDataRequest with _$GetSelectionDayDataRequest {
  factory GetSelectionDayDataRequest({
    required String day,
    required String stationsId,
  }) = _GetSelectionDayDataRequest;
  factory GetSelectionDayDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSelectionDayDataRequestFromJson(json);
}
