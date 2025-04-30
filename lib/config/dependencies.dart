import 'package:lists_together/data/repositories/list/user_list_repository.dart';
import 'package:lists_together/data/repositories/list/user_list_repository_local.dart';
import 'package:lists_together/data/repositories/user/user_repository.dart';
import 'package:lists_together/data/repositories/user/user_repository_local.dart';
import 'package:lists_together/data/services/local/local_data_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providersLocal {
  return [
    Provider.value(value: LocalDataService()),
    Provider(
      create:
          (context) =>
              UserRepositoryLocal(localDataService: context.read())
                  as UserRepository,
    ),
    Provider(
      create:
          (context) =>
              UserListRepositoryLocal(localDataService: context.read())
                  as UserListRepository,
    ),
  ];
}
