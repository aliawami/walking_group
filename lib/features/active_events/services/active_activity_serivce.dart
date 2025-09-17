import 'package:walking_group/models/models.dart';
import 'package:walking_group/waling_group.dart';

class ActiveActivitySerivce {
  final ActiveEventData activeEvent;
  ActiveActivitySerivce({required this.activeEvent}){
    if(activeEvent.event != null){
      if (activeEvent.event!.type != null){
        if(activeEvent.event!.type! == short){
          //Check the event date and time
          //If past it by 10 minutes an the user within distance of the event
          // Save the data to the server
          
          
          //Check the current time or more but less than the end date
          //If user within 2 m of the event start the count.
          
          
          
        }

      }
    }
  }



}
