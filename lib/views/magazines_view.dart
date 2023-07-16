import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/mazaine_cover.dart';
import '../cubits/magazines_cubit.dart';
import '../models/magazine.dart';
import '../services/magazine_service.dart';

class MagazinesView extends StatelessWidget {
  const MagazinesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magazines'),
      ),
      body: BlocBuilder<MagazinesCubit, List<Magazine>>(
        bloc: MagazinesCubit(MagazineService(RepositoryProvider.of(context)))
          ..load(),
        builder: (context, magazines) {
          return ListView.builder(
            itemCount: magazines.length,
            itemBuilder: (context, index) => MagazineCover(magazines[index]),
          );
        },
      ),
    );
  }
}
