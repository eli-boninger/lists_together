import 'package:flutter/material.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:lists_together/data/repositories/list/user_list_repository.dart';
import 'package:lists_together/domain/models/list/user_list.dart';

class ListViewModel extends ChangeNotifier {
  final UserListRepository _userListRepository;
  late Command<int, UserList?> loadUserListCommand;

  ListViewModel({required UserListRepository userListRepository})
    : _userListRepository = userListRepository {
    loadUserListCommand = Command.createAsync<int, UserList?>((int id) async {
      return await _userListRepository.getUserList(id);
    }, initialValue: null);
  }
}
