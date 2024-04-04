import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card1 extends StatelessWidget {
  final double cardHeight = 135;
  final double cardBorderRadius = 16;
  final double cardMargin = 16;
  final double cardElevation = 5;

  final double imageWidth = 100;
  final double imageHeight = 100;

  String coinImage;

  Card1(this.coinImage, {super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: cardMargin),
      width: width,
      height: cardHeight,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
        elevation: cardElevation,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Text(
                    'Total Raised',
                    style: TextStyle(
                      color: Color(0xFFABB8D2),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 16,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -imageHeight / 2,
              right: -cardBorderRadius,
              child: Image.asset(
                'assets/images/coin_1.png',
                width: imageWidth,
                height: imageHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
