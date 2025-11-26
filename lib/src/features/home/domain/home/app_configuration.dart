import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configuration.freezed.dart';
part 'app_configuration.g.dart';

@freezed
abstract class AppConfiguration with _$AppConfiguration {
  factory AppConfiguration({
    required bool enableEcWallet,
    required bool enableEcVnAttachment,
    required bool enableRewardPoints,
    required bool enableEcOtp,
    required bool enableVendorCommunication,
    required bool enableDiscussion,
    required bool enableProductReviews,
    required bool enableRma,
    required bool vendorSeperateCheckout,
    required bool enableGiftCertificate,
    required bool enableEcWhatsappSupport,
    required bool enableEcTelegramSupport,
    required bool enableGdpr,
    required bool ecTicketsSystem,
    required bool enableSdMessagingSystem,
  }) = _AppConfiguration;

  factory AppConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AppConfigurationFromJson(json);
}
