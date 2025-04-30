import 'package:flutter/material.dart';
import 'package:lists_together/domain/models/list/user_list_item.dart';
import 'package:lists_together/ui/core/ui/app_page.dart';
import 'package:lists_together/ui/list/view_models/list_viewmodel.dart';

class ListScreen extends StatefulWidget {
  final int id;
  final ListViewModel viewModel;
  const ListScreen({super.key, required this.id, required this.viewModel});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.loadUserListCommand.execute(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.viewModel.loadUserListCommand.results,
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

        final List<UserListItem> items = result.data!.items;

        return AppPage(
          pageWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lists', style: Theme.of(context).textTheme.headlineLarge),
              ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    child: ListTile(
                      leading: Icon(Icons.keyboard_double_arrow_right),
                      title: Text(items[index].name),
                    ),
                    onPressed: () {
                      print('pressed');
                    },
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
