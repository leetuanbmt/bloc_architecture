import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/services/injection_container.dart';
import '../common/common_bloc.dart';
import 'base_event.dart';
import 'mixin/log_mixin.dart';

/// Base class for all blocs.
///
/// This class provides common functionality for all blocs, such as logging,
/// loading state management, and closing the bloc.
abstract class BaseBloc<S extends BaseEvent, T> extends Bloc<S, T>
    with LogMixin {
  /// Creates a new instance of [BaseBloc].
  BaseBloc(super.initialState);

  /// Closes the bloc and logs a message.
  @override
  Future<void> close() {
    log(toString(), tag: 'Bloc is close');
    return super.close();
  }

  /// Starts the loading state.
  ///
  /// This method adds a [CommonEvent.loadingVisibility] event to the
  /// [CommonBloc] to show the loading indicator.
  void startLoading() {
    getIt<CommonBloc>().add(const CommonEvent.loadingVisibility(true));
  }

  /// Stops the loading state.
  ///
  /// This method adds a [CommonEvent.loadingVisibility] event to the
  /// [CommonBloc] to hide the loading indicator.
  void stopLoading() {
    getIt<CommonBloc>().add(const CommonEvent.loadingVisibility(false));
  }

  /// Base function that can be implemented by child blocs.
  ///
  /// This method can be used to perform common actions, such as fetching data
  /// from an API.
  Future<void> fetch(
    Future<void> Function() fetchFunction,
  ) async {
    startLoading();
    await fetchFunction();
    stopLoading();
  }
}
