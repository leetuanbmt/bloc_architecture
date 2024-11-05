import 'dart:async';

import 'package:flutter/material.dart';

class RefreshWidget extends StatelessWidget {
  const RefreshWidget({
    super.key,
    required this.child,
    required this.onRefresh,
    this.isOverScrolling = false,
    this.isLayoutBuilder = true,
  });

  final Widget child;
  final Function(Completer<void> completer) onRefresh;
  final bool isOverScrolling;
  final bool isLayoutBuilder;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final Completer<void> completer = Completer<void>();
        onRefresh(completer);
        return completer.future;
      },
      notificationPredicate: (ScrollNotification notification) {
        return isOverScrolling
            ? notification.depth == 1
            : notification.depth == 0;
      },
      child: isLayoutBuilder
          ? LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: constraints.maxHeight,
                    child: child,
                  ),
                );
              },
            )
          : child,
    );
  }
}
