import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  static const List<Map<String, String>> _projects = [
    {
      'title': 'TransUNet Lung Segmentation',
      'tag': 'Medical AI • Deep Learning',
      'description':
          'Extended the TransUNet architecture with a pneumonia classifier for lung CT scan analysis. '
              'Combines transformer-based encoders with U-Net skip connections to achieve precise '
              'segmentation of lung regions, aiding radiologists in diagnosis.',
    },
    {
      'title': 'ACDC Cardiac MRI Study',
      'tag': 'Computer Vision • Research',
      'description':
          'Comparative study of medical image segmentation models on the ACDC cardiac MRI '
              'benchmark dataset. Evaluated multiple architectures for accurate segmentation of '
              'heart structures including left/right ventricles and myocardium.',
    },
    {
      'title': 'FinMind AI',
      'tag': 'Full-Stack • AI Finance',
      'description':
          'Full-stack AI-powered financial coaching application with a custom agent engine. '
              'Provides personalised budgeting insights, expense categorisation, and investment '
              'guidance through a conversational AI interface backed by Firebase.',
    },
    {
      'title': 'Bluebook Exam Platform',
      'tag': 'Firebase • EdTech',
      'description':
          'A Firebase-backed online examination platform with anti-exit and anti-tab-switch '
              'enforcement for academic integrity. Supports live proctoring flags, timed tests, '
              'and automated result calculation with instant feedback.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > 600;

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF5B5FEF)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ── Project List ─────────────────────────────────────────────
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: isWide ? screenWidth * 0.2 : 20,
                  vertical: 16,
                ),
                itemCount: _projects.length,
                itemBuilder: (context, index) {
                  final project = _projects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _ProjectCard(project: project),
                  );
                },
              ),
            ),

            // ── Back Button ──────────────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isWide ? screenWidth * 0.2 : 20,
                vertical: 16,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5B5FEF),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Project Card ──────────────────────────────────────────────────────────────

class _ProjectCard extends StatelessWidget {
  final Map<String, String> project;
  const _ProjectCard({required this.project});

  IconData _getIcon(String title) {
    if (title.contains('Lung')) return Icons.air;
    if (title.contains('Cardiac')) return Icons.favorite;
    if (title.contains('Fin')) return Icons.insights;
    if (title.contains('Bluebook')) return Icons.school;
    return Icons.code;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1A1A2E),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFF2A2A4A)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon + Title row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon container
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B5FEF).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    _getIcon(project['title']!),
                    color: const Color(0xFF5B5FEF),
                    size: 24,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5B5FEF).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          project['tag']!,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF5B5FEF),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            // Description
            Text(
              project['description']!,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF7A7EA8),
                height: 1.65,
              ),
            ),
          ],
        ),
      ),
    );
  }
}