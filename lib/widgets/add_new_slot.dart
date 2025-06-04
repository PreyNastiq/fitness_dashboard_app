import 'package:flutter/material.dart';

class AddNewSlot extends StatelessWidget {
  const AddNewSlot({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;

    final buttonColor = theme.cardColor;
    final textColor = theme.scaffoldBackgroundColor;
    final shadowLight = brightness == Brightness.light
        ? Colors.grey.withOpacity(0.6)
        : Colors.grey.withOpacity(0.1);
    final shadowDark = brightness == Brightness.light
        ? Colors.black.withOpacity(0.7)
        : Colors.white.withOpacity(0.7);

    void navigateToAddSlot() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Add New Slot'),
              backgroundColor: theme.cardColor,
              foregroundColor: theme.scaffoldBackgroundColor,
            ),
            body: Center(
              child: Text(
                'This is a placeholder for Add New Slot screen.',
                style: TextStyle(
                  fontSize: 18,
                  color: theme.textTheme.bodyLarge!.color,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 45),
      child: InkWell(
        onTap: navigateToAddSlot,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical:20),
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
              Text(
                'Add New Slot',
                style: TextStyle(
                  fontSize: 20,
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
