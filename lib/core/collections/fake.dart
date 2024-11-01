import '../../domain/entities/user.dart';

abstract class Fake {
  static const User user = User(
    id: 0,
    username: 'username',
    email: 'dummy@gmail.com',
    firstName: 'First Name',
    lastName: 'Last Name',
  );

  static List<User> users = List.generate(10, (index) => user);
}
