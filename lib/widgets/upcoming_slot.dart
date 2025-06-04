import 'package:flutter/material.dart';

class UpcomingSlot extends StatelessWidget {
  UpcomingSlot({super.key});

  final Map<String, dynamic> upcoming = {
    'title': 'Strength Training',
    'date': '2025-06-05',
    'time': '8:00 AM',
    'location': 'Gym Floor A',
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final screenWidth = MediaQuery.of(context).size.width;

    final cardBackground = theme.cardColor;
    final surfaceColor = theme.scaffoldBackgroundColor;
    final iconColor = theme.scaffoldBackgroundColor;
    final textTitleColor = Colors.grey[600] ?? Colors.grey;
    final shadowLight = brightness == Brightness.light
        ? Colors.grey.withOpacity(0.6)
        : Colors.grey.withOpacity(0.1);
    final shadowDark = brightness == Brightness.light
        ? Colors.black.withOpacity(0.7)
        : Colors.white.withOpacity(0.7);

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Upcoming',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: theme.cardColor,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: (screenWidth - 60) / 2,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardBackground,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upcoming['title'],
                    style: TextStyle(
                      fontSize: 14,
                      color: textTitleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 20, color: iconColor),
                      const SizedBox(width: 8),
                      Text(
                        upcoming['time'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: surfaceColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 20, color: iconColor),
                      const SizedBox(width: 8),
                      Text(
                        upcoming['date'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: surfaceColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 20, color: iconColor),
                      const SizedBox(width: 8),
                      Text(
                        upcoming['location'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: surfaceColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
