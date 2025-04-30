import 'package:flutter/widgets.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:lists_together/data/repositories/user/user_repository.dart';
import 'package:lists_together/domain/models/user/user.dart';

class HomeViewModel extends ChangeNotifier {
  final UserRepository _userRepository;
  late Command<int, User?> loadUserCommand;
  User? _user;
  User? get user => _user;

  HomeViewModel({required UserRepository userRepository})
    : _userRepository = userRepository {
    loadUserCommand = Command.createAsync<int, User?>((int id) async {
      return await _userRepository.getUserById(id);
    }, initialValue: null);
  }
}
