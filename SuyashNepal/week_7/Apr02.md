# Daily Intern Log: Thursday, April 02, 2025

### **Intern: Suyash Nepal**
## Focus: SQFlite CRUD Operations & Data Modelling

### Tasks Completed
- [x] Model Class: Created `UsageLog` model with `toMap()` / `fromMap()` methods for SQFlite interop; kept field names aligned with column names to avoid manual mapping errors.
- [x] INSERT: Used `db.insert()` with `ConflictAlgorithm.replace` for upsert-style behaviour on the usage log; verified returned row ID.
- [x] SELECT: Implemented `db.query()` with `orderBy: 'date DESC'` and `limit`; also practiced a raw `db.rawQuery()` with a parameterised WHERE clause.
- [x] UPDATE: Used `db.update()` with a `where` clause and `whereArgs` list — confirmed `whereArgs` prevents SQL injection vs string interpolation in the WHERE string.
- [x] DELETE: Implemented `db.delete()` targeting a specific `id`; added `LIKE`-based search query for notes-style text search as a stretch exercise.
- [x] settings_app integration: Wired `DatabaseHelper` into `StatisticsViewModel`: `init()` reads all usage logs and exposes aggregated stats (total session count, total time) to the Statistics screen.

### Technical "Today I Learned" (TIL)

- **Concept:** `whereArgs` vs string interpolation for parameterised queries
- **Key Takeaway:** Writing `where: 'id = $id'` looks convenient but is a SQL injection vector — if `id` ever comes from user input, a crafted value can corrupt or leak the entire database. `whereArgs: [id]` passes values through SQLite's prepared statement binding, which sanitises them automatically. SQFlite enforces this pattern by accepting `whereArgs` as a separate `List<Object?>`, making the safe path also the ergonomic path. Same applies to `rawQuery`: always use `?` placeholders with a positional args list, never interpolate.
- **Code:**
```dart
// Model
class UsageLog {
  final int?   id;
  final String date;
  final int    durationMs;

  const UsageLog({this.id, required this.date, required this.durationMs});

  Map<String, dynamic> toMap() => {
    if (id != null) 'id': id,
    'date':        date,
    'duration_ms': durationMs,
  };

  factory UsageLog.fromMap(Map<String, dynamic> map) => UsageLog(
    id:         map['id'] as int?,
    date:       map['date'] as String,
    durationMs: map['duration_ms'] as int,
  );
}

// DAO methods
Future<int> insertLog(UsageLog log) async {
  final db = await database;
  return db.insert('usage_logs', log.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<UsageLog>> fetchAllLogs() async {
  final db   = await database;
  final rows = await db.query('usage_logs', orderBy: 'date DESC');
  return rows.map(UsageLog.fromMap).toList();
}

Future<int> updateLog(UsageLog log) async {
  final db = await database;
  return db.update('usage_logs', log.toMap(),
      where: 'id = ?', whereArgs: [log.id]);
}

Future<int> deleteLog(int id) async {
  final db = await database;
  return db.delete('usage_logs', where: 'id = ?', whereArgs: [id]);
}
```

### Work Evidence
- Documentation Read: [sqflite — pub.dev](https://pub.dev/packages/sqflite)
- Documentation Read: [Persist data with SQLite — Flutter docs](https://docs.flutter.dev/cookbook/persistence/sqlite)

### 💬 Mentor Feedback
