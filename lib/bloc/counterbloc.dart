import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_counter/bloc/counterevents.dart';
import 'package:flutter_bloc_counter/bloc/counterstates.dart';

class counterbloc extends Bloc<counterevents,counterstate>{
  counterbloc():super(initialstate()){
    on<increment>((event, emit) => emit(counterstate(counter: state
        .counter+1)),);

    on<decrement>((event, emit) => emit(counterstate(counter: state
        .counter-1)),);

  }


}