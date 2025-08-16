import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas1flutter/Tugas_11/model/user.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) async {
        // Tabel users
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, password TEXT, name TEXT)',
        );

        // Tabel seminar
        await db.execute(
          'CREATE TABLE seminar(id INTEGER PRIMARY KEY AUTOINCREMENT, nama_peserta TEXT, email TEXT, seminar TEXT, kota TEXT)',
        );
      },
      version: 1,
    );
  }

  // ------------------ USERS ------------------
  static Future<void> registerUser(User user) async {
    final db = await databaseHelper();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<User>> getAllUsers() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('users');
    return results.map((e) => User.fromMap(e)).toList();
  }

  // ------------------ SEMINAR ------------------
  static Future<void> insertSeminar({
    required String namaPeserta,
    required String email,
    required String seminar,
    required String kota,
  }) async {
    final db = await databaseHelper();
    await db.insert('seminar', {
      'nama_peserta': namaPeserta,
      'email': email,
      'seminar': seminar,
      'kota': kota,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getAllSeminars() async {
    final db = await databaseHelper();
    return await db.query('seminar');
  }

  static Future<List<Map<String, dynamic>>> getSeminarByEmail(
    String email,
  ) async {
    final db = await databaseHelper();
    return await db.query('seminar', where: 'email = ?', whereArgs: [email]);
  }

  static Future<int> deleteSeminar(int id) async {
    final db = await databaseHelper();
    return await db.delete('seminar', where: 'id = ?', whereArgs: [id]);
  }

  static Future<int> updateSeminar(
    int id, {
    required String namaPeserta,
    required String email,
    required String seminar,
    required String kota,
  }) async {
    final db = await databaseHelper();
    return await db.update(
      'seminar',
      {
        'nama_peserta': namaPeserta,
        'email': email,
        'seminar': seminar,
        'kota': kota,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
