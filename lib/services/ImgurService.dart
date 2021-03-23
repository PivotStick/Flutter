import 'dart:convert';

import 'package:epicture/models/Gallery.dart';
import 'package:http/http.dart' as http;

abstract class ImgurService {
  static const String _CLIENT_ID = "69c3448cf52920b";

  static Future<List<Gallery>> getGalleries() async {
    var uri = Uri.https("api.imgur.com", "/3/gallery/hot");
    var res = await http
        .get(uri, headers: {"Authorization": "Client-ID $_CLIENT_ID"});

    var galleries = List.castFrom(jsonDecode(res.body)["data"])
        .map((json) => Gallery.fromJSON(json))
        .toList();

    return galleries;
  }
}
