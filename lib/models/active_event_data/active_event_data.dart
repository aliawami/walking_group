import 'package:walking_group/models/models.dart';

class ActiveEventData {
  Events? event;
  List<DailyLogs>? dailyLogs;
  Participants? participant;

  ActiveEventData({
    this.event,
    this.dailyLogs,
    this.participant,
  });
}
