import 'package:flutter/material.dart';

import '../../../core/utils/assets/app_images.dart';

class EventlyLogoWidget extends StatelessWidget {
  const EventlyLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Image.asset(
        AppImages.eventlyLogo,
        width: MediaQuery.of(context).size.width * 0.5,
      ),
    );
  }
}
