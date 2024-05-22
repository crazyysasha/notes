import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/config/router.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/application/di.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() {
  i.register(TalkerFlutter.init());

  runTalkerZonedGuarded(i.of(), () async {
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

    runApp(const MyApp());
  }, (error, stack) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: NotesRouter().router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
