import 'package:firebase_auth/firebase_auth.dart';
import 'package:walking_group/models/models.dart';

class UserData {
  User? user;
  List<Events>? completedEvents;
  List<Events>? upcomingEvents;
  List<Events>? activeEvents;
  List<String>? rewards;

  UserData(
      {this.user,
      this.completedEvents,
      this.activeEvents,
      this.upcomingEvents,
      this.rewards});
}
