import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xFF1F2123);
  final _whiteColor = Colors.white;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      this.order = 0})
      : isInverted = order % 2 == 1;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * order.toDouble()),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? _whiteColor : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: isInverted ? _blackColor : _whiteColor)),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? _blackColor : _whiteColor),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      code,
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted
                            ? _blackColor.withOpacity(0.8)
                            : _whiteColor.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : _whiteColor,
                  size: 88,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
