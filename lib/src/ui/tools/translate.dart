import 'package:flutter/material.dart';
import 'package:rentcar/src/common/localization/app_localizations.dart';

/// Ushbu Widgetga o'ralgan Widget localization o'zgarishiga qarab
/// qayta chiziladi(agar bu Widget ishlatilmasa Flutter butun Widgetni
/// qayta chizadi, faqat Textni emas!)
///
/// Ishlatish uchun misol:
///
/// Translate(
///       builder: (context, localization, child) {
///         return Text(
///           localization.advertisementCardDescr1,
///           style: const TextStyle(
///             color: AppColors.primary0,
///             fontWeight: FontWeight.w500,
///             fontSize: 24,
///           ),
///         );
///       },
///     ),
///
///
class Translate extends StatelessWidget {
  const Translate({
    super.key,
    required this.builder,
    this.child,
  });

  final Widget Function(
    BuildContext context,
    AppLocalizations l10n,
    Widget? child,
  ) builder;
  final Widget? child;

  @override
  Widget build(BuildContext context) =>
      builder(context, AppLocalizations.of(context), child);
}

/// Widget ishlatib bo'lmaydigan kodlarda ushbu funksiya Localization uchun
/// ishlatiladi
///
AppLocalizations translate(BuildContext context) =>
    AppLocalizations.of(context);
