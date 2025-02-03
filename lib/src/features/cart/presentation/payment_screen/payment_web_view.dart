import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/cart/domain/cart.dart';
import 'package:meat_empire/src/features/cart/domain/payment_entities/confirm_payment_response.dart';
import 'package:meat_empire/src/features/cart/presentation/payment_screen/success_payment_screen.dart';
import 'package:meat_empire/src/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends StatefulWidget {
  final ConfirmPaymentResponse paymentResponse;
  final Cart cart;

  const WebViewScreen(
      {super.key, required this.paymentResponse, required this.cart});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;
  late Future<void> _loadingFuture;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint("Loading progress: $progress%");
          },
          onPageStarted: (String url) {
            debugPrint("Page started loading: $url");
          },
          onPageFinished: (String url) {
            debugPrint("Page finished loading: $url");
            if (url == widget.paymentResponse.failUrl) {
              //   Navigator.pop(context); // Exit the WebView screen
              //   showCustomDialog(
              //       context: context,
              //       title: widget.paymentResponse.message!,
              //       icon: Icon(
              //         Icons.error,
              //         color: AppColors.darkRed,
              //         size: 45,
              //       ));
              // }
              // if (url == widget.paymentResponse.successUrl) {
              Navigator.pop(context); // Exit the WebView screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessPaymentScreen(
                    cart: widget.cart,
                    orderId: widget.paymentResponse.orderId!,
                  ),
                ),
              );
            }
          },
          onHttpError: (HttpResponseError error) {
            debugPrint("HTTP error: ${error.response}");
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint("Web resource error: ${error.description}");
          },
          onNavigationRequest: (NavigationRequest request) {
            return handleNavigationRequest(request);
          },
        ),
      );

    _loadingFuture =
        _controller.loadRequest(Uri.parse(widget.paymentResponse.redirectUrl!));
  }

  NavigationDecision handleNavigationRequest(NavigationRequest request) {
    final url = request.url;

    // Allow MyFatoorah URLs
    if (url.contains("dispatch=ec_myfatoorah_api")) {
      return NavigationDecision.navigate;
    }

    // Allow trusted domains
    if (url.startsWith("https://meat-empire.com")) {
      return NavigationDecision.navigate;
    }

    // Block specific domains or URLs
    if (url.contains("blocked-domain.com") ||
        url.contains("unwanted-pattern")) {
      debugPrint("Blocked navigation to: $url");
      return NavigationDecision.prevent;
    }

    // Default: allow navigation
    return NavigationDecision.navigate;
  }

  Widget _buildWebView() {
    return WebViewWidget(controller: _controller);
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: FadeCircleLoadingIndicator(), // Add your loading indicator here
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () async {
            if (await _controller.canGoBack()) {
              _controller.goBack(); // Navigate back within the WebView
            } else {
              Navigator.pop(context); // Exit the WebView screen
            }
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)
              .onlyPadding(start: 20),
        ),
        title: Text(
          context.tr("payment"),
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<void>(
        future: _loadingFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While loading
            return Stack(
              children: [
                _buildWebView(),
                _buildLoadingIndicator(),
              ],
            );
          } else if (snapshot.hasError) {
            // Handle error
            return Center(
              child: Text('Failed to load page.'),
            );
          } else {
            // When loading is complete
            return _buildWebView();
          }
        },
      ),
    );
  }
}
