part of 'counter_bloc.dart';

sealed class CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

// enum CounterEvent {
//   increment,
//   decrement;
// }

// void handleCounterEvent(CounterEvent event) {
//   switch (event) {
//     case CounterEvent.increment:
//       // handle increment
//       break;
//     case CounterEvent.decrement:
//       // handle decrement
//       break;
//   }
// }


