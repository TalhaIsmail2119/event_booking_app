import 'package:event_booking_app/config/app_route/app_routes.dart';
import 'package:event_booking_app/flavors/app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyEventsPage extends StatelessWidget {
  const EmptyEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: Colors.black),
                  Text("Events", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(Icons.more_vert),
                ],
              ),
            ),

            // Tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // UPCOMING button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Stay on current (upcoming) page
                        // Or reload upcoming events
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "UPCOMING",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // PAST EVENTS button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                       //context.go(AppRoutes.allEvents);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "PAST EVENTS",
                          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            const Spacer(),

            // Empty state illustration
            Column(
              children: [
                Image.asset("assets/images/empty_calendar.png", height: 150),
                const SizedBox(height: 16),
                const Text("No Upcoming Event", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text("Lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: const Text("EXPLORE EVENTS"),
                ),
              ],
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
