import 'package:case_study/Controller/language_controller.dart';
import 'package:case_study/Screens/Content_CaseStudy/content_casestudy_screen.dart';
import 'package:case_study/Screens/Dashboard/dashboard_screen.dart';
import 'package:case_study/Screens/Feedback_Support/feedback_support_screen.dart';
import 'package:case_study/Screens/Healthcare_Wellness_Resources/healthcare_wellness_resources_screen.dart';
import 'package:case_study/Screens/Purposal/purposal_engagement_screen.dart';
import 'package:case_study/Screens/Setting_Personalization/setting_personalization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

enum Language { english, arabic }

class _HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    ContentCaseStudiesScreen(),
    ProposalEngagementHubScreen(),
    HealthcareWellnessResourcesScreen(),
    FeedbackSupportScreen(),
    SettingsPersonalizationScreen(),
  ];

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
      Navigator.of(context).pop(); // close the drawer
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(_getPageTitle(_selectedDrawerIndex)),
        elevation: 1,
        shadowColor: Colors.grey.shade200,
        actions: [
          Consumer<LanguageController>(builder: (context, provider, child) {
            return PopupMenuButton(
              onSelected: (Language item) {
                if (Language.english.name == item.name) {
                  provider.changeLanguage(const Locale('en'));
                } else {
                  provider.changeLanguage(const Locale('ar'));
                }
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<Language>>[
                const PopupMenuItem(
                  value: Language.english,
                  child: Text('English'),
                ),
                const PopupMenuItem(
                  value: Language.arabic,
                  child: Text('Arabic'),
                ),
              ],
            );
          }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("UserName"),
              accountEmail: Text("user@example.com"),
              currentAccountPicture: CircleAvatar(
                // backgroundImage: AssetImage('assets/profile_image.png'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: Text(AppLocalizations.of(context)!.dashboard),
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: Text(AppLocalizations.of(context)!.contentAndCaseStudies),
              onTap: () => _onSelectItem(1),
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: Text(AppLocalizations.of(context)!.proposalAndEngagementHub),
              onTap: () => _onSelectItem(2),
            ),
            ListTile(
              leading: const Icon(Icons.health_and_safety),
              title: Text(AppLocalizations.of(context)!.healthcareAndWellnessResources),
              onTap: () => _onSelectItem(3),
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: Text(AppLocalizations.of(context)!.feedbackAndSupport),
              onTap: () => _onSelectItem(4),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(AppLocalizations.of(context)!.settingsAndPersonalization),
              onTap: () => _onSelectItem(5),
            ),
          ],
        ),
      ),
      body: _pages[_selectedDrawerIndex],
    );
  }

  String _getPageTitle(int index) {
    switch (index) {
      case 0:
        return AppLocalizations.of(context)!.dashboard;
      case 1:
        return AppLocalizations.of(context)!.contentAndCaseStudies;
      case 2:
        return AppLocalizations.of(context)!.proposalAndEngagementHub;
      case 3:
        return AppLocalizations.of(context)!.healthcareAndWellnessResources;
      case 4:
        return AppLocalizations.of(context)!.feedbackAndSupport;
      case 5:
        return AppLocalizations.of(context)!.settingsAndPersonalization;
      default:
        return '';
    }
  }
}
