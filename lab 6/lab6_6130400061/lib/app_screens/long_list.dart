import 'package:flutter/material.dart';

List<String> getListElements(number) {
  var items =
      List<String>.generate(number, (counter) => "Problem ${counter + 1}");
  return items;
}

Widget getListView(number) {
  var listItems = getListElements(number);

  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        leading: const Icon(Icons.arrow_right),
        trailing: index % 2 != 0 ? const Icon(Icons.star) : null,
        onTap: () => {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: index % 2 == 0
                  ? Text('Problem ${index + 1} is selected')
                  : Text('Problem ${index + 1} is my favorite'),
              action: SnackBarAction(
                onPressed: () {},
                label: 'Undo',
              ),
            ),
          ),
        },
      );
    },
  );
  return listView;
}
