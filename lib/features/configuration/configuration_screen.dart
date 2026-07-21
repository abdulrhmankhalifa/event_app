import 'package:evently/features/configuration/widgets/custom_configuration_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/assets/app_icons.dart';
import '../../core/assets/app_images.dart';

class ConfigurationScreen extends StatelessWidget {
  const ConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Personalize Your Experience',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.tertiary,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
              style: textTheme.bodyLarge,
            ),
            SizedBox(height: 16),
            CustomConfigurationRow(
              title: 'Language',
              isSelected: true,
              leftChild: Text(
                'English',
                style: true
                    ? textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onPrimary,
                      )
                    : textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.tertiary,
                      ),
              ),
              rightChild: Text(
                'Arabic',
                style: !true
                    ? textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onPrimary,
                      )
                    : textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.tertiary,
                      ),
              ),
            ),
            SizedBox(height: 8),
            CustomConfigurationRow(
              title: 'Theme',
              isSelected: true,
              leftChild: SvgPicture.asset(
                AppIcons.sun,
                colorFilter: ColorFilter.mode(
                  true ? colorScheme.onPrimary : colorScheme.tertiary,
                  BlendMode.srcIn,
                ),
              ),
              rightChild: SvgPicture.asset(
                AppIcons.moon,
                colorFilter: ColorFilter.mode(
                  !true ? colorScheme.onPrimary : colorScheme.tertiary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(height: 24),
            FilledButton(onPressed: () {}, child: Text('Let\'s start')),
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
