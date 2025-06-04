import 'package:flutter/material.dart';

class BookingList extends StatelessWidget {
  BookingList({super.key});

  final List<Map<String, dynamic>> dummyBookings = [
    {
      'title': 'Yoga Session',
      'date': '2025-06-01',
      'time': '10:00 AM',
      'location': 'Studio A',
    },
    {
      'title': 'Pilates Class',
      'date': '2025-06-02',
      'time': '1:00 PM',
      'location': 'Studio B',
    },
    {
      'title': 'Zumba Dance',
      'date': '2025-06-03',
      'time': '6:00 PM',
      'location': 'Main Hall',
    },
    {
      'title': 'Cardio Blast',
      'date': '2025-06-04',
      'time': '9:00 AM',
      'location': 'Studio C',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Bookings',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: theme.cardColor,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: PageController(viewportFraction: 1),
            itemCount: dummyBookings.length,
            itemBuilder: (context, index) {
              final booking = dummyBookings[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Smaller title
                      Text(
                        booking['title'],
                        style: TextStyle(
                          fontSize: 16,
                          color: textTitleColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 24,
                            color: iconColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            booking['date'],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: surfaceColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 24, color: iconColor),
                          const SizedBox(width: 8),
                          Text(
                            booking['time'],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: surfaceColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 24, color: iconColor),
                          const SizedBox(width: 8),
                          Text(
                            booking['location'],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: surfaceColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
