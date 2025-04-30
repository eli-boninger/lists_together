import 'package:lists_together/domain/models/list/user_list.dart';

abstract class UserListRepository {
  Future<UserList> getUserList(int listId);
}
