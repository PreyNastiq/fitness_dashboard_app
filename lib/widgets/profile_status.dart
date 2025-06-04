import 'package:flutter/material.dart';

class ProfileStatus extends StatelessWidget {
  const ProfileStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final verifiedBackgroundColor = theme.brightness == Brightness.light
        ? Colors.green.shade200
        : Colors.green.shade900.withOpacity(0.6);
    final verifiedTextColor = theme.brightness == Brightness.light
        ? Colors.green.shade900
        : Colors.green.shade200;

    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Text(
            'Profile Status: ',
            style: TextStyle(fontSize: 16, color: theme.cardColor),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: verifiedBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Verified',
              style: TextStyle(
                color: verifiedTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
