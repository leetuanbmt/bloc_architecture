part of 'user_bloc.dart';

@freezed
class UserEvent extends BaseEvent with _$UserEvent {
  const factory UserEvent.getUser() = _GetUser;
  const factory UserEvent.loadMore() = _LoadMore;
  const factory UserEvent.pullRefresh(Completer<void> completer) = _PullRefresh;
}
