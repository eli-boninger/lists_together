import 'package:lists_together/domain/models/user/user.dart';

abstract class UserRepository {
  Future<User> getUser();
}
