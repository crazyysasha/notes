import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/config/router.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/application/di.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() {
  runTalkerZonedGuarded(i.register(TalkerFlutter.init()), () async {
    WidgetsFlutterBinding.ensureInitialized();

    await Hive.initFlutter();
    Bloc.observer = TalkerBlocObserver(
      talker: i.of<Talker>(),
      settings: const TalkerBlocLoggerSettings(
        printChanges: true,
        printCreations: true,
        printClosings: true,
      ),
    );

    await initNotesDependencies();

    runApp(MyApp());
  }, (error, stack) {});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = NotesRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
    );
  }
}
