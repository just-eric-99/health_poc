part of 'rive_bloc.dart';

enum RiveStatus {
  initial,
  stopped,
  walking,
}

final class RiveState extends Equatable {
  final RiveStatus status;

  const RiveState({
    required this.status,
  });

  RiveState copyWith({
    RiveStatus? status,
  }) {
    return RiveState(
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'RiveState(status: $status)';
  }

  @override
  List<Object?> get props => [status];
}
