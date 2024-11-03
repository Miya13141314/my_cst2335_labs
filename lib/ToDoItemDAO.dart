

import 'package:floor/floor.dart';

import 'ToDoItem.dart';

@dao
abstract class ToDoItemDAO {
  @Query('SELECT * FROM ToDoItem')
  Future<List<ToDoItem>> getAllItems();

  @insert
  Future<void> insertItem(ToDoItem item);

  @delete
  Future<void> deleteItem(ToDoItem item);

  @update
  Future<void> updateItem(ToDoItem item); // Ensure the @update annotation is here
}
