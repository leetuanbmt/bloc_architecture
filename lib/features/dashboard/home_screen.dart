import '../../core/config.dart';
import '../../widgets/theme_model.dart';
import '../users/presentation/screen/user_list.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatefulHookWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr(LocaleKeys.navigatorHome)),
        actions: const [
          ThemeModeToggle(),
        ],
      ),
      body: const UserListWidget(),
    );
  }
}
