# Daily Intern Log: Friday, April 4, 2025

### **Intern: Suyash Nepal**
## Focus: Advanced SQFlite + Integration & Architecture — settings_app wrap-up

### Tasks Completed
- [x] Database Migrations: Studied `onUpgrade(db, oldVersion, newVersion)` callback; practiced adding a new column inside a version guard (`if (oldVersion < 2)`) to understand how schema changes are applied without data loss.
- [x] Transactions & Batch: Wrapped a multi-insert sequence in `db.transaction()` to ensure atomicity; also explored `db.batch()` for bulk inserts with a single commit, noting the performance benefit over sequential `await insert()` calls.
- [x] Foreign Keys: Enabled `PRAGMA foreign_keys = ON` in `onConfigure`; created a second table referencing the first with `FOREIGN KEY (log_id) REFERENCES usage_logs(id) ON DELETE CASCADE`.
- [x] SharedPreferences vs SQFlite Decision: Documented the rule of thumb used in settings_app — prefs for scalar settings (theme, language, font size, PIN, launch count); SQFlite for time-series usage logs that need ordering, aggregation, and future migration support.
- [x] Repository Pattern: Refactored `DatabaseHelper` DAO methods behind an `IUsageLogRepository` interface; `StatisticsViewModel` now depends on the interface, not the concrete class: making future testing with a fake/in-memory repo straightforward.
- [x] settings_app completion: All required features confirmed working — theme toggle, language selection, font size adjustment, PIN lock, onboarding flag, usage statistics, Clear Cache, Reset to Defaults, and app version display — all persisting correctly across restarts.

### Technical "Today I Learned" (TIL)

- **Concept:** `db.batch()` vs sequential `await` inserts: why it matters for performance
- **Key Takeaway:** Each `await db.insert()` call is a round-trip through the platform channel to the native SQLite engine. For 10 rows that's 10 round-trips. `db.batch()` queues all operations in Dart, sends them as a single platform channel call, and SQLite executes them in one go: dramatically faster for bulk writes. The tradeoff is that individual results (row IDs) aren't available until `batch.commit()` resolves. Also confirmed that `batch.commit(noResult: true)` skips collecting those results and is even faster when you don't need them: useful for seeding or logging scenarios.

- **Code:**
```dart
// Foreign keys — enable in onConfigure (before onCreate)
Future<void> _onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

// Batch insert
Future<void> insertLogsBatch(List<UsageLog> logs) async {
  final db    = await database;
  final batch = db.batch();
  for (final log in logs) {
    batch.insert('usage_logs', log.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore);
  }
  await batch.commit(noResult: true);
}

// Transaction example
Future<void> resetAndSeed(List<UsageLog> seedLogs) async {
  final db = await database;
  await db.transaction((txn) async {
    await txn.delete('usage_logs');
    for (final log in seedLogs) {
      await txn.insert('usage_logs', log.toMap());
    }
  });
}

// Repository interface
abstract interface class IUsageLogRepository {
  Future<List<UsageLog>> fetchAll();
  Future<int>            insert(UsageLog log);
  Future<void>           insertBatch(List<UsageLog> logs);
  Future<int>            delete(int id);
}
```

### Work Evidence
- Documentation Read: [sqflite — Transactions & Batch](https://pub.dev/packages/sqflite#transactions-and-batch)
- Documentation Read: [sqflite — Database migrations](https://pub.dev/packages/sqflite#migrations)

### 💬 Mentor Feedback
