import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
          'About Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: isWide ? screenWidth * 0.2 : 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Section: Who I Am ─────────────────────────────────────
              _SectionLabel(label: 'Who I Am'),
              const SizedBox(height: 14),
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  "I'm Susrita Gagireddy, a 3rd-year Computer Science Engineering student at CR Rao AIMSCS "
                  "(Hyderabad Central University). My work sits at the intersection of deep learning, "
                  "computer vision, and real-world AI applications — from medical image segmentation "
                  "to smart traffic systems.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF9B9EC8),
                    height: 1.75,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text(
                  "I completed a research internship at iHub-Data, IIIT Hyderabad (NM-ICPS initiative), "
                  "where I applied AI/ML techniques to smart traffic management problems. "
                  "I am actively building a portfolio that spans medical AI, full-stack applications, "
                  "and large-scale deep learning models.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF9B9EC8),
                    height: 1.75,
                  ),
                ),
              ),

              const SizedBox(height: 36),

              // ── Section: Skills ───────────────────────────────────────
              _SectionLabel(label: 'Technical Skills'),
              const SizedBox(height: 16),
              _SkillGroup(
                title: 'AI / ML',
                skills: [
                  'Deep Learning',
                  'Computer Vision',
                  'Medical Image Segmentation',
                  'PyTorch',
                  'TensorFlow',
                ],
              ),
              const SizedBox(height: 12),
              _SkillGroup(
                title: 'Development',
                skills: [
                  'Python',
                  'Flutter / Dart',
                  'Firebase',
                  'React',
                  'FastAPI',
                ],
              ),
              const SizedBox(height: 12),
              _SkillGroup(
                title: 'Research',
                skills: [
                  'TransUNet',
                  'U-Net Variants',
                  'Cardiac MRI Analysis',
                  'Lung Segmentation',
                ],
              ),

              const SizedBox(height: 36),

              // ── Section: Education ────────────────────────────────────
              _SectionLabel(label: 'Education'),
              const SizedBox(height: 14),
              _InfoCard(
                title: 'B.Tech in Computer Science Engineering',
                subtitle: 'CR Rao AIMSCS, Hyderabad Central University',
                tag: '3rd Year • 2022–2026',
              ),

              const SizedBox(height: 36),

              // ── Section: Experience ───────────────────────────────────
              _SectionLabel(label: 'Experience'),
              const SizedBox(height: 14),
              _InfoCard(
                title: 'Research Intern — AI/ML for Smart Traffic',
                subtitle: 'iHub-Data, IIIT Hyderabad  •  NM-ICPS Initiative',
                tag: 'Research Internship',
              ),

              const SizedBox(height: 48),

              // ── Back Button ───────────────────────────────────────────
              SizedBox(
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Reusable Widgets ─────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xFF5B5FEF),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: 0.3,
          ),
        ),
      ],
    );
  }
}

class _SkillGroup extends StatelessWidget {
  final String title;
  final List<String> skills;
  const _SkillGroup({required this.title, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF5B5FEF),
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map(
                  (s) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A2E),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFF2A2A4A)),
                    ),
                    child: Text(
                      s,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF9B9EC8),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String tag;
  const _InfoCard({
    required this.title,
    required this.subtitle,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A2E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2A2A4A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 13, color: Color(0xFF9B9EC8)),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF5B5FEF).withOpacity(0.15),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF5B5FEF),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
