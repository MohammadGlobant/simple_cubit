import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'change_number_state.dart';

class ChangeNumberCubit extends Cubit<ChangeNumberState> {
  ChangeNumberCubit() : super(ChangeNumberInitial());

  static ChangeNumberCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void add(){counter ++;emit(addNumber());}
  void remove(){counter --;emit(removeNumber());}
}
