part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final int value;
  CounterInitial(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterInitial && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class CounterIncrement extends CounterState {
  final int value;
  CounterIncrement(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterIncrement && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

}

class CounterDecrement extends CounterState {
  final int value;
  CounterDecrement(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterDecrement && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
