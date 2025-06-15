import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basket_counter_state.dart';
  // Cubit<CounterState> = to not make it dynamic As memory = make it extends all my state
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  // Separate ui from logic so do your function here!
  int teamApoints = 0;
  int teamBpoints = 0;

  // put your emit(update the  new state) after function
  void teamIncrement ({ required String team,required int buttonNumbre}){
     if (team == 'A'){
       teamApoints += buttonNumbre;
       emit(CounterAplusState());
     }else{
       teamBpoints += buttonNumbre ;
       emit(CounterBplusState());
     }
  }
  void resetButton(){
    teamBpoints = teamApoints = 0;
    emit(CounterResetState());
  }

}
