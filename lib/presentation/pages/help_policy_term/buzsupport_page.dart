import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';

class BuzSupportPage extends StatefulWidget {
  const BuzSupportPage({super.key});

  @override
  State<BuzSupportPage> createState() => _BuzSupportPageState();
}

class _BuzSupportPageState extends State<BuzSupportPage> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (mounted) {
              setState(() {
                isLoading = false;
              });
            }
          },
          onWebResourceError: (WebResourceError error) {
            if (mounted) {
              setState(() {
                isLoading = false; // Stop loading on error
              });
              // Optionally show an error message
            }
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://BuzSupport.vercel.app/'));
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (colors, _) {
        return KeyboardDismisser(
          isLtr: LocalStorage.getLangLtr(),
          child: Scaffold(
            backgroundColor: colors.backgroundColor,
            extendBodyBehindAppBar: false,
            appBar: AppBar(
              backgroundColor: colors.backgroundColor.withOpacity(0.8),
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  FlutterRemix.arrow_left_s_line,
                  color: colors.textBlack,
                  size: 24.r,
                ),
                onPressed: () async {
                  if (await controller.canGoBack()) {
                    controller.goBack();
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
              title: Text(
                'Buzlin Assistant',
                style: TextStyle(color: colors.textBlack),
              ),
            ),
            extendBody: true,
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: WebViewWidget(
                    controller: controller,
                  ),
                ),
                if (isLoading)
                  Container(
                    color: colors.backgroundColor.withOpacity(0.7),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: colors.primary,
                            strokeWidth: 3.r,
                          ),
                          SizedBox(height: 16.r),
                          Text(
                            'Getting Help...',
                            style: TextStyle(color: colors.textBlack),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
} 