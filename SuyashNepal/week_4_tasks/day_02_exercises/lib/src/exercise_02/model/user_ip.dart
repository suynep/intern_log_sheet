/// Data class for storing user information Along with their associated IPv4 addresses
class UserIp {
  /// User's first name
  final String fName;

  /// User's last name
  final String lName;

  /// ULID (Universally Unique Lexicographically Sortable Identifiers)
  final String ulid;

  /// User's email
  final String email;

  /// User's gender
  final String gender;

  /// IPv4 addr of the user
  final String ipv4;

  const UserIp({
    required this.fName,
    required this.lName,
    required this.email,
    required this.gender,
    required this.ipv4,
    required this.ulid,
  });

  // {
  //   "id": "01KKE07MF5BNM6QKKYNERY4BP1",
  //   "first_name": "Shurlocke",
  //   "last_name": "Boulder",
  //   "email": "sboulder0@jugem.jp",
  //   "gender": "Male",
  //   "ip_address": "143.15.22.94"
  // },

  UserIp.fromJson(Map<String, dynamic> userJson)
    : fName = userJson['first_name'] as String,
      lName = userJson['last_name'] as String,
      email = userJson['email'] as String,
      gender = userJson['gender'] as String,
      ipv4 = userJson['ip_address'] as String,
      ulid = userJson['id'] as String;

//   @override
//   String toString() {
//     return """
// Name: $fName $lName,
// Gender: $gender,
// Email: $email,
// IPv4: $ipv4,
// ULID: $ulid
// """;
// }

  @override
  String toString() {
    return "$fName $lName\n";
  }
}
