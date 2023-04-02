import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/services/item_service.dart';
import 'package:logger/logger.dart';

class NewItemScreen extends StatefulWidget {
  @override
  State<NewItemScreen> createState() => _NewItemScreenState();
}

class _NewItemScreenState extends State<NewItemScreen> {
  final _itemName = TextEditingController();
  final _itemDesc = TextEditingController();

  final ItemService _itemService = ItemService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("โน๊ตใหม่"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _itemName,
              decoration: InputDecoration(label: Text("ชื่อ")),
            ),
            TextField(
              controller: _itemDesc,
              decoration: InputDecoration(label: Text("โน๊ตบันทึก")),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _addItem, child: const Text("บันทึก"))
          ],
        ),
      ),
    );
  }

  _addItem() {
    _itemService.addItem2Firebase(
        _itemName.text, {"name": _itemName.text, "desc": _itemDesc.text});
  }
}
