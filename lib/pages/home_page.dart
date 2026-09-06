import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > 600;

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F1A),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isWide ? screenWidth * 0.25 : 28,
              vertical: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ── Profile Avatar ──────────────────────────────────────
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF5B5FEF).withOpacity(0.5),
                        blurRadius: 30,
                        spreadRadius: 4,
                      ),
                    ],
                  ),

                  child: const Text(
                    'SG',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // ── Name ────────────────────────────────────────────────
                const Text(
                  'Susrita Gagireddy',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),

                const SizedBox(height: 8),

                // ── Designation ─────────────────────────────────────────
                const Text(
                  'BTech CSE • AI / ML Engineer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9EC8),
                    letterSpacing: 0.3,
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'CR Rao AIMSCS, Hyderabad',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF5B5FEF),
                    letterSpacing: 0.2,
                  ),
                ),

                const SizedBox(height: 36),

                // ── Divider ─────────────────────────────────────────────
                Container(
                  width: 48,
                  height: 3,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B5FEF),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 36),

                // ── Tagline ─────────────────────────────────────────────
                const Text(
                  'Building intelligent systems at the intersection\nof computer vision, deep learning, and real-world impact.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7A7EA8),
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 48),

                // ── Navigation Buttons ──────────────────────────────────
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B5FEF),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: const Color(0xFF5B5FEF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Color(0xFF5B5FEF),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: const Text(
                      'My Projects',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
