import 'package:flutter/material.dart';

class CustomConfigurationRow extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Widget leftChild;
  final Widget rightChild;
  const CustomConfigurationRow({
    super.key,
    required this.title,
    required this.isSelected,
    required this.leftChild,
    required this.rightChild,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.titleSmall?.copyWith(
            color: colorScheme.tertiary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
              decoration: BoxDecoration(
                color: isSelected ? colorScheme.primary : colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: leftChild,
            ),
            SizedBox(width: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
              decoration: BoxDecoration(
                color: !isSelected
                    ? colorScheme.primary
                    : colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: rightChild,
            ),
          ],
        ),
      ],
    );
  }
}
