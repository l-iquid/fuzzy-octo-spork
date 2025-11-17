import 'package:finalproject/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';



void configureWindow() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    center: true,
    minimumSize: Size(1000, 600),
    maximumSize: Size(1000, 600),
    size: Size(1000, 600)
  );
  
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

}

Future<void> main() async {
  configureWindow();
  WidgetsFlutterBinding.ensureInitialized();
  await Window.initialize();
  await Window.setEffect(
    effect: WindowEffect.mica,
    color: const Color.fromARGB(255, 143, 58, 58)
  );
  

  runApp(
    ProviderScope(
      child: const MyApp(),
    )
  );

}
