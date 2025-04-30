import 'package:lists_together/data/repositories/list/user_list_repository.dart';
import 'package:lists_together/data/services/local/local_data_service.dart';
import 'package:lists_together/domain/models/list/user_list.dart';

class UserListRepositoryLocal implements UserListRepository {
  UserListRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<UserList> getUserList(int listId) async {
    final UserList userList = await _localDataService.getUserList(listId);
    return userList;
  }
}
