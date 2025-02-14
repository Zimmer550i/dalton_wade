import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double? size;
  final String? assetPath;
  const UserAvatar({
    super.key,
    this.size,
    this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size ?? 40,
        width: size ?? 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size ?? 40),
          child: Image.asset(
            assetPath ?? "assets/images/user.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
