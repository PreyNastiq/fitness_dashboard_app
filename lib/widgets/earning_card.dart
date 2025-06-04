import 'package:flutter/material.dart';

class EarningCard extends StatelessWidget {
  EarningCard({super.key});

  final List<Map<String, dynamic>> dummyEarnings = [
    {'week': 'This Week', 'amount': 461.06},
    {'week': 'Last Week', 'amount': 238.92},
    {'week': '2 Weeks Ago', 'amount': 301.89},
    {'week': '3 Weeks Ago', 'amount': 206.18},
    {'week': '4 Weeks Ago', 'amount': 156.40},
    {'week': '5 Weeks Ago', 'amount': 310.22},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;

    final cardBackground = theme.cardColor;
    final weekTextColor = Colors.grey[600] ?? Colors.grey;
    final amountTextColor = theme.scaffoldBackgroundColor;
    final iconColor = theme.scaffoldBackgroundColor;
    final shadowLight = brightness == Brightness.light
        ? Colors.grey.withOpacity(0.6)
        : Colors.grey.withOpacity(0.1);
    final shadowDark = brightness == Brightness.light
        ? Colors.black.withOpacity(0.7)
        : Colors.white.withOpacity(0.7);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Earnings',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: theme.cardColor,
            ),
          ),
        ),

        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: PageController(viewportFraction: 1),
            itemCount: dummyEarnings.length,
            itemBuilder: (context, index) {
              final earning = dummyEarnings[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                padding: const EdgeInsets.all(20),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        earning['week'],
                        style: TextStyle(
                          fontSize: 16,
                          color: weekTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee, size: 36, color: iconColor),
                        Text(
                          earning['amount'].toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: amountTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
