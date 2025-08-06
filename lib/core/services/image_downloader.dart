import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';

class ImageDownloader {
  static Future<bool> downloadImage(String imageUrl) async {
    // final status = await Permission.storage.request();
    // if (!status.isGranted) return false;

    final response = await Dio().get(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );

    final result = await ImageGallerySaverPlus.saveImage(
      Uint8List.fromList(response.data),
      quality: 100,
      name: "image_${DateTime.now().millisecondsSinceEpoch}",
    );

    return result['isSuccess'] ?? false;
  }
}
