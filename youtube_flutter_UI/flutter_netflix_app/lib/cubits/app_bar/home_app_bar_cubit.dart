import 'package:bloc/bloc.dart';

class HomeAppBarCubit extends Cubit<double> {
  HomeAppBarCubit() : super(0);

  void setOffset(double offset) => emit(offset);
}
