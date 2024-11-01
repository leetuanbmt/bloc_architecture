import '../../../core/config.dart';

mixin LogMixin {
  void log(dynamic msg, {String tag = Configs.appName}) {
    Logger.log(msg, tag: tag);
  }
}
