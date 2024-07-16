// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:path/path.dart';
import 'package:placeholder_test/src/posts/data/models/extensions/extension_post.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:sqflite/sqflite.dart';

class SqliteDbProvider {
  late Database db;

  Future<Database> database({
    required String dbName,
    required String table,
    int version = 1,
  }) async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, dbName);

// Make sure the directory exists
    await Directory(databasesPath).create(recursive: true);

    db = await openDatabase(dbName);

    _onConfigure(Database db) async {
      // Add support for cascade delete
      await db.execute(table);
    }

    _onCreate(Database db, int version) async {
      // Database is created, create the table
      await db.execute(table);
    }

    db = await openDatabase(
      path,
      onConfigure: _onConfigure,
      onCreate: _onCreate,
      version: version,
    );

    return db;
  }

  /// --------------------------------------------------

  //TODO: эта часть пока не работает
  /// id column name
  static const String columnId = '_id';

  /// Open the database.
  Future open({
    required String path,
    required String table,
  }) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(table);
    });
  }

  /// Insert a todo.
  // Future<PostApiModel> insert(PostApiModel post) async {
  //   post.id = (await db.insert('posts', post.toMap()));
  //   return post;
  // }

  /// Get a todo.
  // Future<PostApiModel?> getPost(int id) async {
  //   final List<Map> maps = await db.query(
  //     tableTodo,
  //     columns: [columnId, columnDone, columnTitle],
  //     where: '$columnId = ?',
  //     whereArgs: [id],
  //   );
  //   if (maps.isNotEmpty) {
  //     return PostApiModel.fromJson(maps.first);
  //   }
  //   return null;
  // }

  /// Delete a todo.
  Future<int> delete({
    required int id,
    required String tableName,
  }) async {
    return await db.delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }

  /// Update a todo.
  Future<int> update({
    required PostApiModel post,
    required String tableName,
  }) async {
    return await db.update(tableName, post.toMap(),
        where: '$columnId = ?', whereArgs: [post.id!]);
  }

  /// Close database.
  Future close() async => db.close();
}
