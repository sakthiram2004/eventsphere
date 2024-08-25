import 'package:flutter/material.dart';

class SelectableListDialog extends StatefulWidget {
  final List<String> items;

  SelectableListDialog({required this.items});

  @override
  _SelectableListDialogState createState() => _SelectableListDialogState();
}

class _SelectableListDialogState extends State<SelectableListDialog> {
  late Set<String> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = Set<String>();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Districts '),
      content: SingleChildScrollView(
        child: Column(
          children: widget.items.map((item) {
            return CheckboxListTile(
              title: Text(item),
              value: _selectedItems.contains(item),
              onChanged: (bool? checked) {
                setState(() {
                  if (checked == true) {
                    _selectedItems.add(item);
                  } else {
                    _selectedItems.remove(item);
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          child: Text('Submit'),
          onPressed: () {
            print(_selectedItems);
            Navigator.of(context).pop(_selectedItems);
          },
        ),
      ],
    );
  }
}
