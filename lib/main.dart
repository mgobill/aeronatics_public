import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const AeronaticsApp());
}

class AeronaticsApp extends StatelessWidget {
  const AeronaticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF58C1FF),
        brightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'Aeronatics',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        scaffoldBackgroundColor: const Color(0xFF030918),
        textTheme: baseTheme.textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  static final Uri _appStoreUri = Uri.parse(
    'https://apps.apple.com/app/aeronatics/id6755212824',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 920;
          final compactHeader = constraints.maxWidth < 860;
          final horizontalPadding = constraints.maxWidth < 600 ? 20.0 : 48.0;

          final heroSection = isWide
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildHeroCopy(context)),
                    const SizedBox(width: 40),
                    const Expanded(child: DevicePreviewCard()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _HeroCopy(),
                    SizedBox(height: 32),
                    DevicePreviewCard(),
                  ],
                );

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF020712),
                  Color(0xFF04132F),
                  Color(0xFF010307),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 48,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context, compactHeader),
                      const SizedBox(height: 48),
                      heroSection,
                      const SizedBox(height: 64),
                      Text(
                        'Mission-ready features',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                            ),
                      ),
                      const SizedBox(height: 24),
                      Wrap(
                        spacing: 24,
                        runSpacing: 24,
                        children: const [
                          FeatureCard(
                            icon: Icons.timeline_rounded,
                            title: 'Live flight timeline',
                            description:
                                'Everything from pre-flight to post-flight debrief lives in one visual timeline with weather, checklists, and GPS breadcrumbs.',
                          ),
                          FeatureCard(
                            icon: Icons.cloud_sync_outlined,
                            title: 'Offline-first sync',
                            description:
                                'Record sorties in the hangar or at 35,000 feet. Data syncs automatically once you are back online.',
                          ),
                          FeatureCard(
                            icon: Icons.auto_graph_rounded,
                            title: 'Intelligence-grade analytics',
                            description:
                                'Instant trend breakdowns, logbook exports, and maintenance signals give crews the context they need.',
                          ),
                          FeatureCard(
                            icon: Icons.shield_moon_outlined,
                            title: 'Secure flight locker',
                            description:
                                'End-to-end encryption and role-based access controls keep sensitive mission data protected.',
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.08),
                          ),
                          color: Colors.white.withValues(alpha: 0.02),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Need Aeronatics somewhere else?',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'We are actively building tablet, Android, and desktop releases. Drop us a note if you want to be part of upcoming flight tests.',
                              style: TextStyle(
                                color: Colors.white70,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeroCopy(BuildContext context) => const _HeroCopy();

  Widget _buildHeader(BuildContext context, bool stacked) {
    final theme = Theme.of(context);
    final brand = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [Color(0xFF00F0FF), Color(0xFF306BFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF00F0FF).withValues(alpha: 0.35),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: const Icon(Icons.flight_takeoff, color: Colors.white),
        ),
        const SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aeronatics',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
              ),
            ),
            Text(
              'Flight systems platform',
              style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
            ),
          ],
        ),
      ],
    );

    final callout = Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: Colors.white.withValues(alpha: 0.06),
        border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: theme.colorScheme.secondary,
            size: 18,
          ),
          const SizedBox(width: 8),
          Text(
            'Live on the App Store',
            style: theme.textTheme.labelLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );

    if (stacked) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [brand, const SizedBox(height: 16), callout],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: brand),
        const SizedBox(width: 16),
        Flexible(
          child: Align(alignment: Alignment.centerRight, child: callout),
        ),
      ],
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Flight logging, reimagined for modern aviators.',
          style: theme.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w700,
            height: 1.1,
            letterSpacing: -1.2,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'Aeronatics keeps every sortie, checklist, and sensor trace synchronized so your crews can launch faster and debrief smarter.',
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white70,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            StoreBadge(
              badge: SvgPicture.asset(
                'assets/branding/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg',
                height: 52,
                semanticsLabel: 'Download on the App Store badge',
              ),
              footnote: 'Download on the App Store',
              link: LandingPage._appStoreUri,
            ),
            StoreBadge(
              badge: SvgPicture.asset(
                'assets/branding/GetItOnGooglePlay_Badge_Web_color_English.svg',
                height: 60,
                semanticsLabel: 'Get it on Google Play badge',
              ),
              footnote: 'Get it on Google Play',
              link: null,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          'Available on iOS today. Android beta boards later this year.',
          style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: const [
            HighlightStat(value: '12s', label: 'Average time to log a flight'),
            HighlightStat(
              value: '99.9%',
              label: 'Sync reliability across squadrons',
            ),
            HighlightStat(
              value: 'AES-256',
              label: 'Encryption guarding every data packet',
            ),
          ],
        ),
      ],
    );
  }
}

class StoreBadge extends StatelessWidget {
  const StoreBadge({
    super.key,
    required this.badge,
    required this.footnote,
    this.link,
  });

  final Widget badge;
  final String footnote;
  final Uri? link;

  Future<void> _launchStore(Uri uri) async {
    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched) {
      debugPrint('Could not open $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    final available = link != null;
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: available ? 1 : 0.6,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: available ? () => _launchStore(link!) : null,
              child: Container(
                constraints: const BoxConstraints(minWidth: 180, maxWidth: 260),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: badge,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          available ? footnote : '$footnote (coming soon)',
          style: theme.textTheme.labelMedium?.copyWith(
            color: Colors.white70,
            letterSpacing: 0.2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class HighlightStat extends StatelessWidget {
  const HighlightStat({super.key, required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
        color: Colors.white.withValues(alpha: 0.02),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: -0.4,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 320,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white.withValues(alpha: 0.03),
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.35),
              blurRadius: 30,
              offset: const Offset(0, 24),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [Color(0xFF22D3F4), Color(0xFF256BFF)],
                ),
              ),
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DevicePreviewCard extends StatelessWidget {
  const DevicePreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        gradient: const LinearGradient(
          colors: [Color(0xFF061530), Color(0xFF0B2341), Color(0xFF040816)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1FA0FF).withValues(alpha: 0.2),
            blurRadius: 40,
            offset: const Offset(0, 30),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFFA53E), Color(0xFFFF5F8F)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(Icons.radar, color: Colors.white),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tailwind 412',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Mission ANX-74 • FOB Echo',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: Colors.greenAccent.withValues(alpha: 0.2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.bolt, size: 16, color: Colors.greenAccent),
                    SizedBox(width: 6),
                    Text('LIVE', style: TextStyle(color: Colors.greenAccent)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const PreviewTile(
            title: 'Smart checklists',
            subtitle:
                'Autofills weather, ATIS, and aircraft status as you progress.',
            trailing: 'Step 3 of 8',
          ),
          const PreviewTile(
            title: 'Telemetry',
            subtitle: 'ADS-B + onboard sensors stream directly into the log.',
            trailing: 'Syncing',
          ),
          const PreviewTile(
            title: 'Debrief package',
            subtitle:
                'Shareable PDF + KML with highlights and maintenance notes.',
            trailing: 'Ready',
          ),
        ],
      ),
    );
  }
}

class PreviewTile extends StatelessWidget {
  const PreviewTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  final String title;
  final String subtitle;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white.withValues(alpha: 0.04),
        border: Border.all(color: Colors.white.withValues(alpha: 0.06)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white.withValues(alpha: 0.08),
            ),
            child: Text(
              trailing,
              style: theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
