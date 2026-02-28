import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snapledger/core/error/error_logger.dart';
import 'package:snapledger/shared/models/list_tile_data_model.dart';
import 'package:snapledger/shared/widgets/build_material_list.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<ListTileData> generalSettingList = [
    ListTileData.normal(
      title: 'dark_mode'.tr(),
      // subtitle: settings.darkMode ? 'on'.tr() : 'off'.tr(),
      icon: LucideIcons.moon,
      onClick: comingSoon,
    ),
  ];

  final List<ListTileData> aiSettingsList = [
    ListTileData.normal(
      title: 'api_key'.tr(),
      icon: LucideIcons.keyRound,
      onClick: comingSoon,
    ),
    ListTileData.normal(
      title: 'model'.tr(),
      icon: LucideIcons.brain,
      onClick: comingSoon,
    ),
    ListTileData.normal(
      title: 'custom_prompt'.tr(),
      icon: LucideIcons.squareCode,
      onClick: comingSoon,
    ),
    ListTileData.normal(
      title: 'habit'.tr(),
      icon: LucideIcons.bookOpen,
      onClick: comingSoon,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr(), style: tt.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: comingSoon, icon: Icon(LucideIcons.search)),
          IconButton(onPressed: comingSoon, icon: Icon(LucideIcons.moreVertical)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              spacing: 36,
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: buildMaterialList(context, title: 'general'.tr(), raw: generalSettingList),
                ),
                SizedBox(
                  width: double.infinity,
                  child: buildMaterialList(context, title: 'ai_settings'.tr(), raw: aiSettingsList),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
