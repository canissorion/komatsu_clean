import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:komatsu_clean/app.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'dev.env');
  runApp(const App(flavor: 'Development'));
}
