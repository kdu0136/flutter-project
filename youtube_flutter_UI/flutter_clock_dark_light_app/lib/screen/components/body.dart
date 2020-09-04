import 'package:flutter/material.dart';
import 'package:flutter_clock_dark_light_app/screen/components/clock.dart';
import 'package:flutter_clock_dark_light_app/screen/components/country_card.dart';
import 'package:flutter_clock_dark_light_app/screen/components/time_in_hour_and_minute.dart';
import 'package:flutter_clock_dark_light_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Seoul, KOREA",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "9:20",
                    period: "PM",
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
