import 'package:lists_together/domain/models/list/user_list_item.dart';

abstract class UserListItemRepository {
  Future<UserListItem> getUserListItem();
}
