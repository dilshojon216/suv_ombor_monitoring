part of 'get_last_data_bloc.dart';

@freezed
class GetLastDataEvent with _$GetLastDataEvent {
  const factory GetLastDataEvent.started() = _Started;
  const factory GetLastDataEvent.loadData({
    @Default(1) int page,
    @Default(10) int perPage,
  }) = _LoadData;
  const factory GetLastDataEvent.loadMore({
    required int page,
    @Default(10) int perPage,
  }) = _LoadMore;
  const factory GetLastDataEvent.refresh() = _Refresh;
}
