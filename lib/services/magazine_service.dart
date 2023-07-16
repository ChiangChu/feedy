import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

import '../models/magazine.dart';
import '../repositories/repository.dart';

class MagazineService {
  MagazineService(this._repository);

  final Repository _repository;

  Future<List<Magazine>> getAll() async {
    List<Magazine> magazines = [];
    dynamic response = await _repository.getMagazines();

    try {
      if (response is String) {
        XmlDocument document = XmlDocument.parse(response);
        debugPrint(document
            .getElement('rss')
            ?.getElement('channel')
            ?.toXmlString(pretty: true));
      }
    } catch (_) {}

    return magazines;
  }
}
