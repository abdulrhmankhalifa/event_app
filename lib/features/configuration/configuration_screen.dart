import 'package:evently/core/l10n/app_localizations.dart';
import 'package:evently/features/configuration/provider/congiuration_provider.dart';
import 'package:evently/features/configuration/widgets/custom_configuration_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../core/router/routes_name.dart';
import '../../core/utils/assets/app_icons.dart';
import '../../core/utils/assets/app_images.dart';

class ConfigurationScreen extends StatelessWidget {
  const ConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ConfigurationProvider>();
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildEventlyImage(context),
            Expanded(
              child: SvgPicture.asset(
                AppImages.configurationImage,
                colorFilter: ColorFilter.mode(
                  colorScheme.tertiary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)!.personalizeYourExperience,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.tertiary,
              ),
            ),
            SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.configurationDescription,
              style: textTheme.bodyLarge,
            ),
            SizedBox(height: 16),
            CustomConfigurationRow(
              title: AppLocalizations.of(context)!.language,
              isSelected: provider.isEn,
              leftChild: Text(
                AppLocalizations.of(context)!.english,
                style: provider.isEn
                    ? textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onPrimary,
                      )
                    : textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.tertiary,
                      ),
              ),
              onLeftTap: () {
                provider.changeLanguage('en');
              },
              rightChild: Text(
                AppLocalizations.of(context)!.arabic,
                style: !provider.isEn
                    ? textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onPrimary,
                      )
                    : textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.tertiary,
                      ),
              ),
              onRightTap: () {
                provider.changeLanguage('ar');
              },
            ),
            SizedBox(height: 8),
            CustomConfigurationRow(
              title: AppLocalizations.of(context)!.theme,
              isSelected: !provider.isDark,
              leftChild: SvgPicture.asset(AppIcons.sun),
              onLeftTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              rightChild: SvgPicture.asset(AppIcons.moon),
              onRightTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
            ),
            SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RouteName.login);
              },
              child: Text(AppLocalizations.of(context)!.letsStart),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEventlyImage(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.eventlyLogo,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.45,
      ),
    );
  }
}
