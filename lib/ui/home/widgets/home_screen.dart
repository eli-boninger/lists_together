import 'package:flutter/material.dart';
import 'package:lists_together/domain/models/list/user_list.dart';
import 'package:lists_together/ui/core/ui/app_page.dart';
import 'package:lists_together/ui/home/view_models/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.viewModel.loadUserCommand.results,
      builder: (BuildContext context, result, _) {
        if (result.isExecuting) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (!result.hasData || result.data == null) {
          return Center(child: Text('Error'));
        }

        final List<UserList> lists = result.data!.lists;
        print(lists.length);

        return AppPage(
          pageWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lists', style: Theme.of(context).textTheme.headlineLarge),
              ListView.builder(
                itemCount: lists.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    child: ListTile(
                      leading: Icon(Icons.keyboard_double_arrow_right),
                      title: Text(lists[index].name),
                    ),
                    onPressed: () => print(lists[index].name),
                  );
                },
                shrinkWrap: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
