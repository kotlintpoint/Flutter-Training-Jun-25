import 'package:flutter/material.dart';
import 'package:grocery_app_offline/data/categories.dart';
import 'package:grocery_app_offline/db/helper.dart';
import 'package:grocery_app_offline/models/category.dart';
import 'package:grocery_app_offline/models/grocery_item.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key, this.groceryItem});

  final GroceryItem? groceryItem;

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _formKey = GlobalKey<FormState>();
  var _enteredName = '';
  var _enteredQuantity = 1;
  var _selectedCategory = categories[Categories.vegetables];

  @override
  void initState() {
    if (widget.groceryItem != null) {
      _enteredName = widget.groceryItem!.name;
      _enteredQuantity = widget.groceryItem!.quantity;
      _selectedCategory = widget.groceryItem!.category;
    }
    super.initState();
  }

  void _saveItem() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      final groceryItem = GroceryItem(
        name: _enteredName,
        quantity: _enteredQuantity,
        category: _selectedCategory!,
      );
      final db = await initializeDatabase();
      if (widget.groceryItem == null) {
        int newId = await db.insert(tblGroceryItem, groceryItem.toMap());
        if (newId > 0) {
          groceryItem.id = newId;
        }
      } else {
        int count = await db.update(
          tblGroceryItem,
          groceryItem.toMap(),
          where: "$colId = ?",
          whereArgs: [widget.groceryItem!.id],
        );
        print("count : $count");
        if(count > 0) {
          groceryItem.id = widget.groceryItem!.id;
        }
      }
      Navigator.of(context).pop(groceryItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( widget.groceryItem == null ? "Add a new Item" : "Update Item")),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _enteredName,
                maxLength: 50,
                decoration: InputDecoration(label: const Text("Name")),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50) {
                    return "Must be between 1 and 50 characters.";
                  }
                  return null;
                },
                onSaved: (value) {
                  _enteredName = value!;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Quantity"),
                      ),
                      initialValue: _enteredQuantity.toString(),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! <= 0) {
                          return "Must be a valid, positive number.";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredQuantity = int.tryParse(value!) ?? 1;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: _selectedCategory,
                      items: [
                        for (final category in categories.entries)
                          DropdownMenuItem(
                            value: category.value,
                            child: Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  color: category.value.color,
                                ),
                                SizedBox(width: 8),
                                Text(category.value.title),
                              ],
                            ),
                          ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: Text("Reset"),
                  ),
                  ElevatedButton(
                    onPressed: _saveItem,
                    child: Text(
                      widget.groceryItem == null ? "Add Item" : "Update Item",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
