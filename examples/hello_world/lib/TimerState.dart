import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;

  TimerState(this.duration, [List props= const []]) : super();
  //[duration]..addAll(props)
}

class Ready extends TimerState {
  Ready(int duration) : super(duration);

  @override
  String toString() => 'Ready {duration: $duration}';

  @override
  // TODO: implement props
  List<Object> get props => null;
}


class Paused extends TimerState {
  Paused(int duration) : super(duration);

  @override
  String toString() => 'Paused {duration: $duration}';

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class Running extends TimerState {
  Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class Finished extends TimerState {
  Finished() : super(0);

  @override
  String toString() => 'Finished';

  @override
  // TODO: implement props
  List<Object> get props => null;
}