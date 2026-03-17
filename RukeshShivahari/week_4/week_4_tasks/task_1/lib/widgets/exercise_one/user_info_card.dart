import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;
  final void Function() onViewProfile;

  const UserInfoCard({
    super.key,
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.onViewProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
        ),
        title: Text(name),
        subtitle: Text(email),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: onViewProfile,
        ),
      ),
    );
  }
}
