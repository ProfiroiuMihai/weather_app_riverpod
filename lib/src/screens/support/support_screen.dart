import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_test/src/repository/read_repository.dart';
import 'package:weather_app_test/src/widgets/button_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class SupportScreen extends ConsumerWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(readFileProvider);
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTextWidget(
          "Support Screen",
          style: CustomTextStyles.text22_500,
        ),
        Row(
          children: [
            SizedBox(
              width: 140,
              child: AppButtonWidget(
                  label: "Save File",
                  onPressed: () async {
                    // final writeText =
                    // await IsolateRead.instance.writeFile("dsffsdfsdf");
                    // // final writeText =
                    // //     await IsolateRead.instance.writeFile("filePath", 99);
                    // ref.watch(readProvider(writeText.path));

                    ref.watch(saveFileProvider);
                  }),
            ),
            SizedBox(
              width: 140,
              child: AppButtonWidget(
                  label: "Read File",
                  onPressed: () async {
                    // final readText =
                    //     await IsolateRead.instance.readFile();
                    // ref.watch(readProvider(readText));
                    //
                    // ref.read(filterTypeProvider.notifier).state = readText;

                    ref.watch(readFileProvider);
                  }),
            ),
          ],
        ),
        AppTextWidget(ref.watch(filterTypeProvider))
      ],
    )));
  }
}
