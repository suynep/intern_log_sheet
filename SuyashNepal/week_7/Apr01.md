# Daily Intern Log: Wednesday, April 01, 2025

### **Intern: Suyash Nepal**
## Focus: SQLite & SQFlite Basics

### Tasks Completed
- [x] Relational Database Concepts: Studied tables, rows, columns, primary keys, and how SQLite stores everything in a single `.db` file on-device.
- [x] SQLite Data Types: Reviewed TEXT, INTEGER, REAL, BLOB, and NULL — and how SQLite's dynamic typing (type affinity) differs from strictly-typed databases.
- [x] SQFlite Setup: Added `sqflite` and `path` to `pubspec.yaml`; used `getDatabasesPath()` + `join()` to construct the correct platform-specific database file path.
- [x] DatabaseHelper Singleton: Created `lib/data/local/database_helper.dart` with a private constructor, lazy `_db` field, and `get database` async getter that opens (or creates) the DB on first access.
- [x] Table Schema & `onCreate`: Defined a `usageLogs` table schema inside the `onCreate` callback using `CREATE TABLE IF NOT EXISTS`; added `id INTEGER PRIMARY KEY AUTOINCREMENT` and relevant columns.
- [x] Database Versioning: Set `version: 1` on `openDatabase`; noted how `onUpgrade` will be used in future migrations when the schema changes.

### Technical "Today I Learned" (TIL)

- **Concept:** Why `getDatabasesPath()` + `path` package instead of a hardcoded path
- **Key Takeaway:** The databases directory differs per platform (Android vs iOS vs desktop). `getDatabasesPath()` from `sqflite` returns the correct OS-level location, and `join()` from the `path` package assembles the full file path safely regardless of separator character. Hardcoding `/data/data/com.example/databases/app.db` would break on iOS and desktop immediately. Also learned that `openDatabase` is idempotent: calling it multiple times returns the same connection, which is why the singleton pattern (check `_db != null`) is the correct guard rather than opening a new connection on every DAO call.
- **Code:**
```dart
// lib/data/local/database_helper.dart
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._();

  Database? _db;

  Future<Database> get database async {
    _db ??= await _initDatabase();
    return _db!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path   = join(dbPath, 'settings_app.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS usage_logs (
        id          INTEGER PRIMARY KEY AUTOINCREMENT,
        date        TEXT    NOT NULL,
        duration_ms INTEGER NOT NULL DEFAULT 0
      )
    ''');
  }
}
```

### Work Evidence
- Documentation Read: [sqflite — pub.dev](https://pub.dev/packages/sqflite)
- Documentation Read: [SQLite data types](https://www.sqlite.org/datatype3.html)

### 💬 Mentor Feedback
