import 'package:firebase_auth/firebase_auth.dart';
import 'package:walking_group/models/models.dart';

class UserData {
  User? user;
  List<Events>? eventHisoty;
  List<Events>? currentEvents;
  List<String>? rewards;

  UserData({this.user, this.eventHisoty, this.currentEvents, this.rewards});
}
