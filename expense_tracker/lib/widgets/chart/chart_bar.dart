import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({
    super.key,
    required this.fill,
    required this.amount,
  });

  final double fill;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (amount > 0)
              FittedBox(
                child: Text(
                  'P${amount.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode
                        ? Theme.of(context).colorScheme.onSecondaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            const SizedBox(height: 4),
            Expanded(
              child: FractionallySizedBox(
                heightFactor: fill,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    color: isDarkMode
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.primary.withOpacity(0.65),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}