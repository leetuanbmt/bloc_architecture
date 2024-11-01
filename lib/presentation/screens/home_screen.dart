import 'package:skeletonizer/skeletonizer.dart';

import '../../blocs/user_bloc/user_bloc.dart';
import '../../core/config.dart';
import '../../core/hooks/controllers/use_pagination.dart';
import '../../core/services/injection_container.dart';
import '../../domain/entities/user.dart';
import '../widgets/cache_image.dart';
import '../widgets/common/base_page_state.dart';
import '../widgets/refresh_widget.dart';
import '../widgets/theme_model.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatefulHookWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen, UserBloc> {
  @override
  Widget buildPage(BuildContext context) {
    final scrollController = usePagination(
      onLoadMore: () => bloc.add(const UserEvent.loadMore()),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr(LocaleKeys.navigatorHome)),
        actions: const [
          ThemeModeToggle(),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        buildWhen: (previous, current) {
          return current.isLoaded || current.isLoading || current.isError;
        },
        builder: (context, state) {
          return RefreshWidget(
            isOverScrolling: state.isLoaded && state.users.isNotEmpty,
            onRefresh: (completer) {
              bloc.add(UserEvent.pullRefresh(completer));
            },
            child: state.maybeWhen(
              orElse: () => const SizedBox(),
              error: (message) => Center(
                child: TextApp(
                  message,
                  color: context.error,
                ),
              ),
              loading: () => UserListView.loading(),
              loaded: (data) => UserListView(
                users: data.users,
                scrollController: scrollController,
              ),
              pullRefresh: (data) => UserListView(users: data.users),
              loadingMore: (data) => UserListView(
                users: data.users,
                isLoadMore: true,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  UserBloc createBloc() => UserBloc(getIt());

  @override
  void initState() {
    super.initState();
    bloc.add(const UserEvent.getUser());
  }
}

/// A widget that displays a list of users.
class UserListView extends StatelessWidget {
  /// Creates a new instance of [UserListView].
  const UserListView({
    super.key,
    required this.users,
    this.isLoadMore = false,
    this.scrollController,
    this.enabled = false,
  });

  factory UserListView.loading() {
    return UserListView(users: Fake.users, enabled: true);
  }

  final bool isLoadMore, enabled;

  /// The list of users to display.
  final List<User> users;

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: enabled,
      child: ListView.builder(
        controller: scrollController,
        itemCount: users.length + 1,
        itemBuilder: (context, index) {
          if (index == users.length) {
            return isLoadMore
                ? const Skeletonizer(child: UserWidget(user: Fake.user))
                : const SizedBox();
          }
          final user = users[index];
          return UserWidget(user: user);
        },
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(user.id),
      leading: CacheImage(
        imageUrl: user.image ?? '',
        width: 40,
        height: 40,
        radius: 100,
      ),
      title: TextApp(
        user.name,
        type: TextType.lg,
        fontWeight: FontWeight.w500,
      ),
      subtitle: TextApp(
        user.email ?? '',
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
