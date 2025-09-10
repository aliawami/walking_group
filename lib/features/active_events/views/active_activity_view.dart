import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/models/models.dart';
import 'package:walking_group/waling_group.dart';

import '../../home/base/event_activity_keys.dart';
import 'active_step_counter_view.dart';
import 'active_title_info_card.dart';

class ActiveActivityView extends ConsumerStatefulWidget {
  final ActiveEventData event;
  const ActiveActivityView({required this.event, super.key});

  @override
  ConsumerState<ActiveActivityView> createState() => _HomeActivateViewState();
}

class _HomeActivateViewState extends ConsumerState<ActiveActivityView>
    with LoggingMixin {
  int _steps = 0;

  @override
  void initState() {
    if (widget.event.event != null) {
      if (widget.event.event!.type != null) {
        if (widget.event.event!.type!.toLowerCase() ==
            EventsType.monthly.name.toLowerCase()) {}
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: padding15V,
          alignment: Alignment.center,
          // color: Colors.blueGrey.shade900,
          decoration: BoxDecoration(
            // color: Colors.blueGrey.shade900,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
            border: Border.all(
              width: 2,
              color: Colors.blueGrey.shade400,
            ),
          ),
          child: Text(
            widget.event.event == null ? '' : widget.event.event!.title ?? '',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Spacer(),
        Padding(
          padding: padding15Bottom,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Padding(
              padding: padding15All,
              child: LimitedBox(
                child: ActiveStepCounterView(
                  event: widget.event.event ?? Events(),
                  // steps: _steps,
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ActiveTitleInfoCard(
                title: EventActivityKeys.rank.arName(),
                info: widget.event.participant == null
                    ? "0"
                    : "${widget.event.participant!.rank ?? 0}",
              ),
            ),
            // ActivityCard(
            //   activity: ActivityKeys.pace,
            //   value: pace,
            // ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: TitleInfoCard(
                title: EventActivityKeys.particiants.arName(),
                info: widget.event.event == null
                    ? "0"
                    : "${widget.event.event!.totalParticipants ?? 0}",
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: TitleInfoCard(
                title: EventActivityKeys.totalsteps.arName(),
                info: widget.event.participant == null
                    ? "0"
                    : "${widget.event.participant!.totalSteps ?? 0}",
              ),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
