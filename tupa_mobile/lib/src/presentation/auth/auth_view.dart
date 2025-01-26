import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:tupa_mobile/src/presentation/auth/widgets/auth_header.dart';
import 'package:tupa_mobile/src/presentation/auth/widgets/auth_user_mobile.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

final _shorebirdCodePush = ShorebirdCodePush();

class _AuthViewState extends State<AuthView> {
  // final _isShorebirdAvailable = _shorebirdCodePush.isShorebirdAvailable();
  PackageInfo? packageInfo;
  int? _currentPatchVersion;
  bool isCheckingForUpdate = false;
  bool isTeacher = false;

  Future<void> getVersion() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      packageInfo = info;
    });
  }

  Future<void> checkPatch() async {
    await _shorebirdCodePush.currentPatchNumber().then((currentPatchVersion) {
      if (!mounted) return;
      setState(() {
        _currentPatchVersion = currentPatchVersion;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    checkPatch();
    getVersion();
  }

  Future<void> checkForUpdate() async {
    setState(() {
      isCheckingForUpdate = true;
    });

    // Ask the Shorebird servers if there is a new patch available.
    final isUpdateAvailable =
        await _shorebirdCodePush.isNewPatchAvailableForDownload();

    if (!mounted) return;

    setState(() {
      isCheckingForUpdate = false;
    });

    if (isUpdateAvailable) {
      _showUpdateAvailableBanner();
    } else {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 10),
          content: Text('Nao há atualizações disponiveis'),
        ),
      );
    }
  }

  void _showDownloadingBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      const MaterialBanner(
        content: Text('Downloading...'),
        actions: [
          SizedBox(
            height: 14,
            width: 14,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
        ],
      ),
    );
  }

  void _showUpdateAvailableBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: const Text('Atualização disponivel'),
        actions: [
          TextButton(
            onPressed: () async {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              await _downloadUpdate();

              if (!mounted) return;
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            child: const Text('Download'),
          ),
        ],
      ),
    );
  }

  void _showRestartBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: const Text('Nova atualização pronta!'),
        actions: [
          TextButton(
            // Restart the app for the new patch to take effect.
            onPressed: () {
              Restart.restartApp();
            },
            child: const Text('Reeniciar app'),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadUpdate() async {
    _showDownloadingBanner();
    await _shorebirdCodePush.downloadUpdateIfAvailable();
    if (!mounted) return;

    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    _showRestartBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColors.label,
        child: SizedBox(
          height: 600,
          width: 360,
          child: Card(
            color: AppColors.offWhite,
            elevation: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const AuthHeader(),
                const SizedBox(height: 32),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AuthUserMobile(),
                ),
                const SizedBox(height: 8),
                // const AuthFooter(),
                Text(
                  'Version: ${packageInfo?.version ?? ''}',
                  style: TextStyles.body.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Patch: ${_currentPatchVersion ?? 0}',
                  style: TextStyles.body.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                // if (!_isShorebirdAvailable)
                //   Text(
                //     'Shorebird Engine not available.',
                //     style: TextStyles.body.copyWith(color: Colors.black),
                //     textAlign: TextAlign.center,
                //   ),
                // if (_isShorebirdAvailable)                   ////Disabled because is updating automatically
                //   ElevatedButton(
                //     onPressed:
                //         isCheckingForUpdate ? null : checkForUpdate,
                //     child: isCheckingForUpdate
                //         ? const _LoadingIndicator()
                //         : const Text('Verificar Atualização'),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
