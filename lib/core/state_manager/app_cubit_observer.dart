// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitObserver extends BlocObserver {}

void runStateObserver() {
  Bloc.observer = AppCubitObserver();
}
