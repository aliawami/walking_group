import 'package:walking_group/models/models.dart';

class ActiveEventData {
  Events? event;
  List<Participants>? participants;
  Participants? participant;

  ActiveEventData({
    this.event,
    this.participants,
    this.participant,
  });
}
