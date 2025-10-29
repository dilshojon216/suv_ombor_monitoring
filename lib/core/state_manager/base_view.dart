// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/core/state_manager/view_model.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> =
    Widget Function(
      BuildContext context,
      V viewModel,
      S state,
    );
typedef OnViewModelBuilder<V> =
    Widget Function(
      BuildContext context,
      V viewModel,
    );
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);
typedef ListenerCondition<S> = bool Function(S previous, S current);

class BaseView<V extends ViewModel<S>, S> extends StatefulWidget {
  const BaseView({
    super.key,
    this.builder,
    this.onViewModelReady,
    this.stateListener,
    this.buildWhen,
    this.listenWhen,
  });

  final OnViewModelReady<V>? onViewModelReady;
  final OnViewModelStateBuilder<V, S>? builder;
  final OnStateListener<S>? stateListener;
  final BuilderCondition<S>? buildWhen;
  final ListenerCondition<S>? listenWhen;

  @override
  State<BaseView<V, S>> createState() => _BaseViewState<V, S>();
}

class _BaseViewState<V extends ViewModel<S>, S> extends State<BaseView<V, S>> {
  late final V viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = instance<V>();
    widget.onViewModelReady?.call(viewModel);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: BlocConsumer<V, S>(
        builder: (context, state) {
          return widget.builder?.call(context, viewModel, state) ??
              const SizedBox.shrink();
        },
        listener: widget.stateListener ?? (_, _) {},
        buildWhen: widget.buildWhen,
        listenWhen: widget.listenWhen,
      ),
    );
  }
}
