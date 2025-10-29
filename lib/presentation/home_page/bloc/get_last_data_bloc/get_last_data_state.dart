part of 'get_last_data_bloc.dart';

@freezed
class GetLastDataState with _$GetLastDataState {
  const factory GetLastDataState.initial() = _Initial;
  const factory GetLastDataState.loading() = _Loading;
  const factory GetLastDataState.loadingMore({
    required List<LastData> data,
  }) = _LoadingMore;
  const factory GetLastDataState.loaded({
    required List<LastData> data,
    required int currentPage,
    required int totalPages,
    required bool hasMore,
  }) = _Loaded;
  const factory GetLastDataState.error({
    required String message,
  }) = _Error;
}
