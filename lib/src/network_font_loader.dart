import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:network_font_loader/src/cache/factory/factory.dart';
import 'package:network_font_loader/src/models/network_font.dart';

class NetworkFontLoader {

  static load( NetworkFont networkFont ) async {

    Uri? uri = Uri.tryParse( networkFont.url );

    if ( uri != null && uri.isAbsolute) {

      Uint8List bytes = await downloadAndCache( networkFont.url );

      var fontLoader = FontLoader(networkFont.fontFamily);

      fontLoader.addFont(Future.value(ByteData.view(bytes.buffer)));

      await fontLoader.load();

    }
  }
}