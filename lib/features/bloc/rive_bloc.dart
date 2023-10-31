import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'rive_event.dart';
part 'rive_state.dart';

class RiveBloc extends Bloc<RiveEvent, RiveState> {
  RiveBloc() : super(const RiveState(status: RiveStatus.initial)) {
    on<RiveWalk>(_onRiveWalk);
    on<RiveStop>(_onRiveStop);
  }

  void _onRiveWalk(RiveWalk event, Emitter<RiveState> emit) {
    emit(const RiveState(status: RiveStatus.walking));
  }

  void _onRiveStop(RiveStop event, Emitter<RiveState> emit) {
    emit(const RiveState(status: RiveStatus.stopped));
  }
}
