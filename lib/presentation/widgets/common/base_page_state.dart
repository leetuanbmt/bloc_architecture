import '../../../blocs/base/base_bloc.dart';
import '../../../blocs/base/mixin/log_mixin.dart';
import '../../../core/config.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> with LogMixin {
  late B bloc;

  @override
  void initState() {
    super.initState();
    bloc = createBloc();
    log(bloc.runtimeType.toString(), tag: 'Bloc Created');
  }

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
