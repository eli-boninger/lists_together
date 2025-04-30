import 'package:lists_together/data/repositories/user/user_repository.dart';
import 'package:lists_together/data/services/local/local_data_service.dart';
import 'package:lists_together/domain/models/user/user.dart';

class UserRepositoryLocal implements UserRepository {
  UserRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<User> getUserById(int id) async {
    final User user = await _localDataService.getUserById(id);
    return user;
  }
}
