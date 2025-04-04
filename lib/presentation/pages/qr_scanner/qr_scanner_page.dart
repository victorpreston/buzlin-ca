import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:permission_handler/permission_handler.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  final MobileScannerController cameraController = MobileScannerController(
    facing: CameraFacing.back,
    torchEnabled: false,
    formats: [BarcodeFormat.qrCode],
    detectionSpeed: DetectionSpeed.normal,
  );

  bool _isCameraInitialized = false;
  String? _errorMessage;
  bool _isProcessing = false;
  bool _hasPermission = false;

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
  }

  Future<void> _checkCameraPermission() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      setState(() {
        _hasPermission = true;
      });
      _initializeCamera();
    } else {
      setState(() {
        _errorMessage = 'Camera permission is required to scan QR codes';
      });
    }
  }

  Future<void> _initializeCamera() async {
    try {
      await cameraController.start();
      if (mounted) {
        setState(() {
          _isCameraInitialized = true;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Failed to initialize camera: ${e.toString()}';
        });
      }
    }
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  void _showQRResultDialog(BuildContext context, String qrData) {
    if (_isProcessing) return;
    _isProcessing = true;

    // Check if the QR data is a valid URL
    bool isValidUrl = false;
    Uri? uri;
    try {
      // Try to parse the URL
      String url = qrData;
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        url = 'https://$url';
      }
      uri = Uri.parse(url);
      isValidUrl = uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https');
    } catch (e) {
      isValidUrl = false;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => ThemeWrapper(
        builder: (colors, controller) {
          return AlertDialog(
            title: Text(
              isValidUrl ? 'Shop Scanned' : 'QR Code Scanned',
              style: CustomStyle.interSemi(
                color: colors.textBlack,
                size: 18,
              ),
            ),
            
            actions: [
              TextButton(
                onPressed: () {
                  _isProcessing = false;
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: CustomStyle.interNormal(
                    color: colors.textBlack,
                    size: 16,
                  ),
                ),
              ),
              if (isValidUrl)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                  ),
                  onPressed: () async {
                    try {
                      final result = await launchUrl(
                        Uri.parse(uri.toString()),
                        mode: LaunchMode.externalApplication,
                      );
                      if (!result) {
                        throw Exception('Failed to launch URL');
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Error: ${e.toString()}',
                              style: CustomStyle.interNormal(
                                color: colors.textBlack,
                                size: 16,
                              ),
                            ),
                            backgroundColor: colors.error,
                          ),
                        );
                      }
                    } finally {
                      _isProcessing = false;
                      if (context.mounted) {
                        Navigator.pop(context);
                      }
                    }
                  },
                  child: Text(
                    'Open Shop',
                    style: CustomStyle.interSemi(
                      color: colors.white,
                      size: 16,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (colors, controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: AppBar(
            backgroundColor: colors.backgroundColor,
            title: Text(
              'Scan',
              style: CustomStyle.interSemi(
                color: colors.textBlack,
                size: 18,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: colors.textBlack,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                color: colors.textBlack,
                icon: Icon(
                  cameraController.torchEnabled ? Icons.flash_on : Icons.flash_off,
                ),
                onPressed: () {
                  cameraController.toggleTorch();
                },
              ),
              IconButton(
                color: colors.textBlack,
                icon: Icon(
                  cameraController.facing == CameraFacing.front ? Icons.camera_front : Icons.camera_rear,
                ),
                onPressed: () {
                  cameraController.switchCamera();
                },
              ),
            ],
          ),
          body: _errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 48,
                        color: colors.error,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage!,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: colors.error),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _checkCameraPermission,
                        child: const Text('Grant Permission'),
                      ),
                    ],
                  ),
                )
              : !_isCameraInitialized
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      children: [
                        MobileScanner(
                          controller: cameraController,
                          onDetect: (capture) {
                            if (_isProcessing) return;
                            
                            final List<Barcode> barcodes = capture.barcodes;
                            for (final barcode in barcodes) {
                              if (barcode.rawValue != null) {
                                _showQRResultDialog(context, barcode.rawValue!);
                                break;
                              }
                            }
                          },
                        ),
                        Center(
                          child: Container(
                            width: 250.w,
                            height: 250.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colors.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              'Position QR code within the frame',
                              style: CustomStyle.interNormal(
                                color: colors.textBlack,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
        );
      },
    );
  }
} 