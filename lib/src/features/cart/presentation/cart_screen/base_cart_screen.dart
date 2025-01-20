import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';

class CartScreenBase extends StatelessWidget {
  final String? title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CartScreenBase({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            if (title != null) ...[
              Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 22),
              ),
              const SizedBox(height: 24),
            ],
            Assets.images.cartImage.image(cacheHeight: 150, cacheWidth: 200),
            const SizedBox(height: 38),
            Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: onButtonPressed,
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
