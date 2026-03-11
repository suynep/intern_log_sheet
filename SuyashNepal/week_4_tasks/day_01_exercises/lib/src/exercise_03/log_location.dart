/// Enum of log locations
///
/// Log Location refers to any of: `initState`, `build`, `didUpdateWidget`, `deactivate`, `dispose`.
/// As such, enums follow a similar naming convention.
enum LogLocation { initState, build, didUpdateWidget, deactivate, dispose, setState, didUpdateDependencies }
