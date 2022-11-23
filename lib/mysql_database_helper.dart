import 'package:dio/dio.dart';

class MySQLDbHelper {
  static Future<String> addCourse(
      courseName, courseImg, courseDuration, courseLink, coursePrice) async {
    var dio = Dio();
    var formData = FormData.fromMap({
      'courseName': courseName,
      'courseImg': courseImg,
      'courseDuration': courseDuration,
      'courseLink': courseLink,
      'coursePrice': coursePrice,
    });

    var response = await dio.post('', data: formData);
    return response.toString();
  }
}
