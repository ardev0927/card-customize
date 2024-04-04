import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
        surfaceTintColor: Colors.transparent,
        elevation: cardElevation,
        child: Stack(
          children: [
            Positioned(
              top: -imageHeight / 2,
              right: -cardBorderRadius,
              child: Image.asset(
                coinImage,
                width: imageWidth,
                height: imageHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Total Raised',
                      style: TextStyle(
                        color: Color(0xFFABB8D2),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          coinImage,
                          width: 24,
                          height: 24,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            '0.02442',
                            style: TextStyle(
                              color: Color(0xFF252729),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            '1 GGP',
                            style: TextStyle(
                              color: Color(0xFFABB8D2),
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: LinearPercentIndicator(
                            percent: 0.8,
                            // width: width / 3,
                            lineHeight: 8,
                            barRadius: Radius.circular(4),
                            linearGradient: const LinearGradient(
                                colors: [Color(0xFFFFAA98), Color(0xFFFD69DC)]),
                            backgroundColor: Color(0xFFEAF0F8),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text: 'Sale: ',
                                style: TextStyle(fontSize: 10),
                              ),
                              TextSpan(
                                text: '61%',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 1,
                      color: Color(0xFFDCE3ED)),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '260/100000 USDT',
                            style: TextStyle(
                              color: Color(0xFF252729),
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        GradientText(
                          'JOIN',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                          colors: [Color(0xFFFFAA98), Color(0xFFFD69DC)],
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFAA98), Color(0xFFFD69DC)],
                            ),
                          ),
                          child: Center(
                            child:
                                Image.asset('assets/images/arrow_forward.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
