part of 'rive_bloc.dart';

@immutable
sealed class RiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class RiveWalk extends RiveEvent {}

final class RiveStop extends RiveEvent {}
