import 'package:path/path.dart';
import 'package:sekolahku/data/model/student.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  static const _databaseName = 'students.db';
  static const _tableName = 'students';
  static const _databaseVersion = 1;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
  }

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db =
        openDatabase(join(path, _databaseName), onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE $_tableName (
          studentId INTEGER PRIMARY KEY AUTOINCREMENT,
          phoneNumber TEXT,
          firstName TEXT,
          lastName TEXT,
          gender TEXT,
          degree TEXT,
          photo TEXT,
          address TEXT,
          hobbies TEXT
        )''',
      );
    }, version: _databaseVersion);
    return db;
  }

  Future<void> insertStudent(Student student) async {
    final Database db = await database;
    await db.insert(_tableName, student.toMap());
    print('Data saved!');
  }

  Future<List<Student>> getStudents() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results.map((res) => Student.fromMap(res)).toList();
  }

  Future<Student> getStudentById(int studentId) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'studentId = ?',
      whereArgs: [studentId],
    );
    return results.map((res) => Student.fromMap(res)).first;
  }

  Future<void> updateStudent(Student student) async {
    final Database db = await database;
    await db.update(
      _tableName,
      student.toMap(),
      where: 'studentId = ?',
      whereArgs: [student.studentId],
    );
    print('Data updated!');
  }

  Future<void> deleteStudent(int studentId) async {
    final Database db = await database;
    await db.delete(
      _tableName,
      where: 'studentId = ?',
      whereArgs: [studentId],
    );
    print('Data deleted!');
  }
}
