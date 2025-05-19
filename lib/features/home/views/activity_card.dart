import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/home/base/activity_keys.dart';

class ActivityCard extends ConsumerStatefulWidget {
  final ActivityKeys activity;
  final double value;
  const ActivityCard({
    required this.activity,
    required this.value,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActivityCardState();
}

class _ActivityCardState extends ConsumerState<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding10All,
      child: Container(
        padding: padding10All,
        // width: MediaQuery.of(context).size.width / 4,
        // height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
            border: Border.all(width: 2, color: Colors.blueGrey.shade400)),
        child: Padding(
          padding: padding15All,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/footprint.svg',
                height: 24,
              ),
              Text("${widget.value}"),
              Text(widget.activity.arName()),
            ],
          ),
        ),
      ),
    );
  }
}
