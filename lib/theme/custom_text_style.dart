import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray40006 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40006,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBluegray40007 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40007,
      );
  static get bodyMediumBluegray40010 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40010,
      );
  static get bodyMediumGray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray100,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray40006 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40006,
      );
  static get bodySmallBluegray4000610 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40006,
        fontSize: 10.fSize,
      );
  static get bodySmallDeeppurple300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple300,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray40006 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40006,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBluegray40009 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40009,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray40010 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40010,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray4001016 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40010,
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRed400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red400,
        fontSize: 16.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
