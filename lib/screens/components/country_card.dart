import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/size_config.dart';
import 'package:flutter_svg/svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.country,
    required this.timeZone,
    required this.iconSrc,
    required this.period,
    required this.time,
  }) : super(key: key);
  final String country, timeZone, iconSrc, period, time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.91,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(23),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
