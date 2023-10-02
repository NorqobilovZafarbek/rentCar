import 'package:flutter/material.dart';
import 'package:rentcar/src/common/constants/app_images.dart';
import 'package:rentcar/src/common/constants/app_colors.dart';
import 'package:rentcar/src/common/localization/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.information500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.reviewers(440),
            ),
            Container(
              width: 200,
              height: 200,
              color: AppColors.primary200,
            ),
            const SizedBox(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage(AppImages.car3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
