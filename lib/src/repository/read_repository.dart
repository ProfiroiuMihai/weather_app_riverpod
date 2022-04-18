import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_test/src/screens/support/isolate.dart';


final saveFileProvider = FutureProvider.autoDispose((ref) async {
  final readText1 = await IsolateRead.instance.readFile();
  await IsolateRead.instance.writeFile(readText1+"1");
  final readText = await IsolateRead.instance.readFile();

  ref.read(filterTypeProvider.notifier).state = readText;
});

final readFileProvider = FutureProvider.autoDispose((ref) async {
  final readText = await IsolateRead.instance.readFile();
  ref.read(filterTypeProvider.notifier).state = readText;
});

final filterTypeProvider = StateProvider<String>((ref) => "");

// final fileProvider = Provider.autoDispose((ref) {
//   final watchFile = ref.watch(readProvider(""));
//   return watchFile;
// });
//
// final readProvider = Provider.family
//     .autoDispose<String, String>((ref, readString) => readString);
//

