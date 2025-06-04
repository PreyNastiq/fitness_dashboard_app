import 'package:fitness_dashboard/widgets/add_new_slot.dart';
import 'package:fitness_dashboard/widgets/booking_card.dart';
import 'package:fitness_dashboard/widgets/earning_card.dart';
import 'package:fitness_dashboard/widgets/custom_appbar.dart';
import 'package:fitness_dashboard/widgets/profile_status.dart';
import 'package:fitness_dashboard/widgets/theme_toggle.dart';
import 'package:fitness_dashboard/widgets/upcoming_slot.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'D A S H B O A R D',
        leftIcon: Icons.menu,
        rightIcon: Icons.notifications,
        leftPress: () {},
        rightPress: () {},
      ),
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileStatus(),
            Divider(thickness: 3, height: 30),
            EarningCard(),
            Divider(thickness: 3, height: 30),
            BookingList(),
            Divider(thickness: 3, height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Upcoming Slot takes half width
                Expanded(flex: 1, child: UpcomingSlot()),

                SizedBox(width: 20),

                // Right side: AddNewSlot and ThemeToggleButton stacked vertically
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      AddNewSlot(),
                      SizedBox(height: 10),
                      ThemeToggleButton(),
                    ],
                  ),
                ),
              ],
            ),
            SafeArea(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
