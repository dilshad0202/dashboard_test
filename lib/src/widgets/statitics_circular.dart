import 'package:dashboard_test/src/styles.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class StaticsCircularWidget extends StatelessWidget {
  const StaticsCircularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: shadow(),
          color: Colors.white),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "STATITICS",
              style: textStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontSize: 14),
            ),
            const Icon(
              Icons.menu,
              color: Colors.grey,
            )
          ],
        ),
        Expanded(
          child: Stack(fit: StackFit.expand, children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey,
                  ),
                  Text(
                    "842 k",
                    style: textStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SleekCircularSlider(
                min: 0,
                max: 1000,
                initialValue: 842,
                appearance: CircularSliderAppearance(
                    startAngle: 150,
                    angleRange: 260,
                    infoProperties: InfoProperties(
                        mainLabelStyle: const TextStyle(fontSize: 1)),
                    spinnerMode: true,
                    animationEnabled: false,
                    size: 200,
                    customColors: CustomSliderColors(
                        trackColor: Colors.white,
                        progressBarColor: const Color(0xff3988d7),
                        hideShadow: true),
                    customWidths: CustomSliderWidths(
                        trackWidth: 18, progressBarWidth: 18, handlerSize: 0)),
              ),
            ),
          ]),
        ),
        Text(
          "Awesome",
          style: textStyle(
              fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "Close to Reach 1000k followers",
          style: textStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
