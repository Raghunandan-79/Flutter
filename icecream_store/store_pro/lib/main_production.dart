import 'package:store_pro/app/app.dart';
import 'package:store_pro/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
