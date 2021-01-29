import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int value;
  CounterCubit(this.value) : super(CounterInitial(value));

  void incrementValue(){
    value++;
    emit(CounterIncrement(value));
  }

  void decrementValue(){
    value--;
    emit(CounterDecrement(value));
  }
}
