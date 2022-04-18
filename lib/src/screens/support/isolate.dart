import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:path_provider/path_provider.dart';

class IsolateFunctionArguments {
  final String filePath;
  final int difficulty;
  final SendPort sendPort;

  IsolateFunctionArguments(this.filePath, this.difficulty, this.sendPort);
}

class IsolateRead {
  IsolateRead._();

  static final instance = IsolateRead._();

  Future<String> writeFileIsolate(String filePath, int difficulty) async {
    final port = ReceivePort();
    final args = IsolateFunctionArguments(filePath, difficulty, port.sendPort);
    Isolate? isolate = await Isolate.spawn<IsolateFunctionArguments>(
        writeFileFunction, args,
        onError: port.sendPort, onExit: port.sendPort);
    StreamSubscription? sub;
    // Listening for messages on port
    var completer = Completer<String>();

    sub = port.listen((data) async {
      // Cancel a subscription after message received called
      if (data != null) {
        var ansHex = data.toString();
        completer.complete(ansHex);
        await sub?.cancel();
        if (isolate != null) {
          isolate!.kill(priority: Isolate.immediate);
          isolate = null;
        }
      }
    });
    return completer.future;
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<String> readFile() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return "empty";
    }
  }

  Future writeFileFunction(IsolateFunctionArguments args) async {
    File file = await writeFile('${args.difficulty}');
    args.sendPort.send(file);
  }


  Future<File> writeFile(String text) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString(text);
  }
}





