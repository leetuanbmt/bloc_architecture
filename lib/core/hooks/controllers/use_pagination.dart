import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ScrollController usePagination({
  required VoidCallback onLoadMore,
}) {
  final scrollController = useScrollController();

  void scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent) {
      onLoadMore();
    }
  }

  useEffect(
    () {
      scrollController.addListener(scrollListener);
      return () => scrollController.removeListener(scrollListener);
    },
    [scrollController],
  );

  return scrollController;
}
