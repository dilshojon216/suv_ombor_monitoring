// ignore_for_file: public_member_api_docs, inference_failure_on_instance_creation, lines_longer_than_80_chars, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_state.dart';
part 'splash_page_cubit.freezed.dart';

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit() : super(const SplashPageState.initial());

  Future<void> loadSplash() async {
    emit(const SplashPageState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const SplashPageState.loaded());
  }
}
