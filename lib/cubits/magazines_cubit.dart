import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/magazine.dart';
import '../services/magazine_service.dart';

class MagazinesCubit extends Cubit<List<Magazine>> {
  MagazinesCubit(this._service) : super(const []);

  final MagazineService _service;

  Future load() async {
    emit(await _service.getAll());
  }
}
