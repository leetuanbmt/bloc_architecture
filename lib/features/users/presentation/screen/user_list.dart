import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config.dart';
import '../../../../core/hooks/controllers/use_pagination.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/cache_image.dart';
import '../../../../widgets/common/base_page_state.dart';
import '../../../../widgets/refresh_widget.dart';
import '../../../auth/domain/entities/user.dart';
import '../bloc/user_bloc.dart';

class UserListWidget extends StatefulHookWidget {
  const UserListWidget({super.key});

  @override
  State<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends BasePageState<UserListWidget, UserBloc> {
  @override
  void onInit() {
    bloc.add(const UserEventFetchUsers());
  }

  @override
  UserBloc createBloc() => UserBloc(getUsers: getIt());

  @override
  Widget buildPage(BuildContext context) {
    final scrollController = usePagination(
      onLoadMore: () {
        bloc.add(const UserEventLoadMoreUsers());
      },
    );
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) {
        return current is UserStateLoaded ||
            current is UserStateError ||
            current is UserStateLoadMore;
      },
      builder: (context, state) {
        return RefreshWidget(
          isOverScrolling:
              state is UserStateLoaded && state.data.users.isNotEmpty,
          onRefresh: (completer) {
            bloc.add(UserEventRefreshUsers(completer));
          },
          child: switch (state) {
            UserStateLoaded() => UserListView(
                users: state.data.users,
                scrollController: scrollController,
              ),
            UserStateLoadMore() => UserListView(
                users: state.data.users,
                isLoadMore: true,
              ),
            UserStateError() => Center(
                child: TextApp(
                  state.message,
                  type: TextType.lg,
                  color: Colors.red,
                ),
              ),
            _ => UserListView.loading(),
          },
        );
      },
    );
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
