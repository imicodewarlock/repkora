import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkora/l10n/app_localizations.dart';
import '../cubit/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SwitchListTile(
                title: Text(l10n.audioAlerts),
                value: state.soundEnabled,
                activeColor: Colors.amber,
                onChanged: (val) {
                  context.read<SettingsCubit>().toggleSound(val);
                },
              ),
              const Divider(),
              ListTile(
                title: Text(l10n.language),
                subtitle: Text(state.locale.languageCode.toUpperCase()),
                trailing: DropdownButton<String>(
                  value: state.locale.languageCode,
                  dropdownColor: const Color(0xFF1E1E1E),
                  items: const [
                    DropdownMenuItem(value: 'en', child: Text('English')),
                    DropdownMenuItem(value: 'ar', child: Text('العربية')),
                    DropdownMenuItem(value: 'fr', child: Text('Français')),
                    DropdownMenuItem(value: 'es', child: Text('Español')),
                    DropdownMenuItem(value: 'it', child: Text('Italiano')),
                  ],
                  onChanged: (langCode) {
                    if (langCode != null) {
                      context.read<SettingsCubit>().changeLanguage(langCode);
                    }
                  },
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text('App Version'),
                subtitle: Text(l10n.appVersion),
              ),
            ],
          );
        },
      ),
    );
  }
}