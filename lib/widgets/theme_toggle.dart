import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../config/theme_notifier.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;

    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);

    final buttonColor = theme.cardColor;
    final textColor = theme.scaffoldBackgroundColor;

    final shadowLight = brightness == Brightness.light
        ? Colors.grey.withOpacity(0.6)
        : Colors.grey.withOpacity(0.1);
    final shadowDark = brightness == Brightness.light
        ? Colors.black.withOpacity(0.7)
        : Colors.white.withOpacity(0.7);

    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10),
      child: InkWell(
        onTap: () {
          themeNotifier.toggleTheme();
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: shadowLight,
                blurRadius: 12,
                offset: const Offset(-4, -4),
              ),
              BoxShadow(
                color: shadowDark,
                blurRadius: 12,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
                color: textColor,
              ),
              const SizedBox(width: 8),
              Text(
                brightness == Brightness.light ? 'Dark Mode' : 'Light Mode',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
