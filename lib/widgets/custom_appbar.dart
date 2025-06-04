import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.leftPress,
    required this.rightPress,
  });

  final String title;
  final IconData leftIcon;
  final IconData rightIcon;
  final VoidCallback leftPress;
  final VoidCallback rightPress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    // Choose color based on theme brightness for icons and text
    final iconAndTextColor = theme.brightness == Brightness.light
        ? theme.scaffoldBackgroundColor
        : theme.scaffoldBackgroundColor;

    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: size.width * 0.9,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: theme.brightness == Brightness.light
                ? Colors.grey.withOpacity(0.6)
                : Colors.grey.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(-4, -4),
          ),
          BoxShadow(
            color: theme.brightness == Brightness.light
                ? Colors.black.withOpacity(0.7)
                : Colors.white.withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],

        // Use primary color of the theme for background
        color: theme.cardColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: theme.cardColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: leftPress,
                icon: Icon(leftIcon, color: iconAndTextColor),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: iconAndTextColor,
                  fontSize: 18,
                ),
              ),
              IconButton(
                onPressed: rightPress,
                icon: Icon(rightIcon, color: iconAndTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
