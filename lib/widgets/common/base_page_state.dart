import '../../core/common/base/base_bloc.dart';
import '../../core/common/base/mixin/log_mixin.dart';
import '../../core/config.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> with LogMixin {
  late B bloc;

  @override
  void initState() {
    bloc = createBloc();
    onInit();
    super.initState();
  }

  void onInit();

  B createBloc();

  Widget buildPage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: buildPage(context),
    );
  }
}
