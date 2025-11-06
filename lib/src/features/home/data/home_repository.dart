import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/src/features/home/domain/home/version_update.dart';
import 'package:meat_empire/src/routing/app_router_provider.dart';
import 'package:meat_empire/src/shared_functions.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/end_points.dart';
import '../../../network/network_service.dart';
import '../domain/home/home.dart';

part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepository(Ref ref) =>
    HomeRepository(ref.watch(networkServiceProvider()));

class HomeRepository {
  final NetworkService _networkService;

  const HomeRepository(this._networkService);

  Future<Home> getHome(BuildContext? currentContext) async {
    final response = await _networkService.get(EndPoints.homeApi);
    Home homeResponse = Home.fromJson(response.data);
    if (homeResponse.success) {
      final versionInfo = homeResponse.versionUpdate;
      if (currentContext != null) {
        await checkAppVersion(currentContext, versionInfo);
      }
      return homeResponse;
    }
    throw AppException(homeResponse.message);
  }

  Future<void> checkAppVersion(
    BuildContext context,
    VersionUpdate versionUpdate,
  ) async {
    debugPrint("VERSION NUMBER${versionUpdate.appAndroidVersion}");
    debugPrint("NEED UPDATE VERSION NUMBER${versionUpdate.appUpdateRequired}");
    final info = await PackageInfo.fromPlatform();
    final currentVersion = info.version; // e.g. "1.0.0"
    debugPrint("CURRENT VERSION NUMBER${versionUpdate.appAndroidVersion}");

    final latestVersion = Platform.isAndroid
        ? versionUpdate.appAndroidVersion
        : versionUpdate.appIosVersion;

    final updateRequired = versionUpdate.appUpdateRequired;

    // 🔍 Compare versions (simple semantic version comparison)
    if (_isVersionLower(currentVersion, latestVersion)) {
      final title =
      updateRequired?
      "update_title_required"
      :"update_title_optional";
      //  versionUpdate.appNewUpdateTitle ?? "Update Available";
      final message = updateRequired
      ?"update_message_required":"update_message_optional";
          // ? (versionUpdate.appUpdateRequiredMessage ??
          //       "A new version is required to continue using the app.")
          // : (versionUpdate.appUpdateMessage ??
          //       "A new version of the app is available.");

      final url = Platform.isAndroid
          ? versionUpdate.appAndroidUrl
          : versionUpdate.appIosUrl;

      showUpdateDialog(context, title, message, url, updateRequired);
    }
  }

  bool _isVersionLower(String current, String latest) {
    final currParts = current.split('.').map(int.parse).toList();
    final latestParts = latest.split('.').map(int.parse).toList();
    for (var i = 0; i < currParts.length; i++) {
      if (i >= latestParts.length) return false;
      if (currParts[i] < latestParts[i]) return true;
      if (currParts[i] > latestParts[i]) return false;
    }
    return currParts.length < latestParts.length;
  }
}

@Riverpod(keepAlive: true)
Future<Home> home(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  final router = ref.watch(appRouterProvider);

  final currentContext = router.navigatorKey.currentContext;
  return repository.getHome(currentContext);
}
