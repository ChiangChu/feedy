import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'repositories/repository.dart';
import 'repositories/rss_feed_repository.dart';
import 'styles/app_theme.dart';
import 'views/magazines_view.dart';

AppTheme appTheme = AppTheme();

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));
    return RepositoryProvider<Repository>(
      create: (_) => RSSFeedRepository(dio),
      child: MaterialApp(
        theme: appTheme.light(),
        home: MagazinesView(),
      ),
    );
  }
}
