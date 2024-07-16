import 'package:placeholder_test/services/local_db/sqlite_db_provider.dart';
import 'package:placeholder_test/src/posts/data/models/extensions/extension_post.dart';
import 'package:placeholder_test/src/posts/data/models/posts_api_models/post_api_model.dart';
import 'package:sqflite/sqflite.dart';

const DB_NAME = 'post_database.db';

class SqfliteDataSourceImpl {
  // SqfliteDataSourceImpl();
  static Future<List<PostApiModel>?> fetchPosts() async {
    final database = SqliteDbProvider().database(
      dbName: DB_NAME,
      table:
          'CREATE TABLE posts(id INTEGER PRIMARY KEY, userId INTEGER, title TEXT, body TEXT)',
    );

    // final database = openDatabase(
    //   // Set the path to the database
    //   join(await getDatabasesPath(), 'post_database.db'),
    //   // When the database is first created, create a table to store dogs.
    //   onCreate: (db, version) {
    //     // Run the CREATE TABLE statement on the database.
    //     return db.execute(
    //       'CREATE TABLE posts(id INTEGER PRIMARY KEY, userId INTEGER, title TEXT, body TEXT)',
    //     );
    //   },
    //   version: 1,
    // );

    Future<void> insertData(PostApiModel post) async {
      // Get a reference to the database.
      final db = await database;

      // Insert entity into the correct table.

      await db.insert(
        'posts',
        post.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    // A method that retrieves all the posts from the dogs table.
    Future<List<PostApiModel>> posts() async {
      // Get a reference to the database.
      final db = await database;

      // Query the table for all the posts.
      final List<Map<String, Object?>> postMaps = await db.query('posts');

      // Convert the list of each model fields into a list of `PostApiModel` objects.
      return [
        for (final {
              'id': id as int,
              'userId': userId as int,
              'title': title as String,
              'body': body as String,
            } in postMaps)
          PostApiModel(
            id: id,
            userId: userId,
            title: title,
            body: body,
          ),
      ];
    }

    Future<void> updatePost(PostApiModel posts) async {
      // Get a reference to the database.
      final db = await database;

      // Update the given Dog.
      await db.update(
        'posts',
        posts.toMap(),
        // Ensure that the PostApiModel has a matching id.
        where: 'id = ?',
        // Pass the posts id as a whereArg to prevent SQL injection.
        whereArgs: [posts.id],
      );
    }

    Future<void> deletePost(int id) async {
      // Get a reference to the database.
      final db = await database;

      // Remove the PostApiModel from the database.
      await db.delete(
        'posts',
        // Use a `where` clause to delete a specific dog.
        where: 'id = ?',
        // Pass the posts id as a whereArg to prevent SQL injection.
        whereArgs: [id],
      );
    }

    // Create a PostApiModel and add it to the posts table
    var fido = const PostApiModel(
      id: 0,
      userId: 1,
      title: 'Fido',
      body: 'Some post',
    );

    await insertData(fido);

    // Now, use the method above to retrieve all the dogs.
    print(await posts()); // Prints a list that include Fido.

    // Update Fido's age and save it to the database.
    fido = PostApiModel(
      id: fido.id,
      userId: fido.id,
      title: fido.title,
      body: 'Post update',
    );
    await updatePost(fido);

    // Print the updated results.
    print(await posts()); // Prints Fido with age 42.

    // Delete Fido from the database.
    await deletePost(fido.id ?? 0);

    // Print the list of dogs (empty).
    print(await posts());
    return null;
  }
}
