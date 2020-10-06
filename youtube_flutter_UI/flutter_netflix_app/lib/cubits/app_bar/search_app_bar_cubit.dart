import 'package:bloc/bloc.dart';

class SearchAppBarCubit extends Cubit<String> {
  SearchAppBarCubit() : super(null);

  void setText(String text) => emit(text);
}
