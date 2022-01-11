import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  await dotenv.load(fileName: 'dev.env');
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const App(flavor: 'Development'));
}
