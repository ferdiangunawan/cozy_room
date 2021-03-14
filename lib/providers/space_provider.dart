import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_kos/models.dart/space.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future getRecommendedSpace() async {
    var spaceApi = Uri.https('bwa-cozy.herokuapp.com', '/recommended-spaces');

    var result = await http.get(spaceApi);

    if (result.statusCode == 200) {
      var data = jsonDecode(result.body) as List;
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
