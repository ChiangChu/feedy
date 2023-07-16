import 'package:dio/dio.dart';

import 'repository.dart';

class RSSFeedRepository extends Repository {
  RSSFeedRepository(this._dio);

  final Dio _dio;

  @override
  Future<dynamic> getMagazines() async {
    Response response = await _dio.getUri(Uri.parse(
        'https://www.tagesschau.de/wissen/technologie/index~rss2.xml'));
    return response.data ?? '';
  }
}
