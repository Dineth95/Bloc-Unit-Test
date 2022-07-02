import 'dart:developer';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:bloc_unit_test_example/di/injector.dart';
import 'package:bloc_unit_test_example/home_bloc/home_screen_bloc.dart';
import 'package:bloc_unit_test_example/home_respository/repository.dart';
import 'package:bloc_unit_test_example/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  // runApp(const MyApp());
  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: SimpleBlocObserver(), eventTransformer: sequential());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) =>
            HomeScreenBloc(homeRepository: getIt<HomeRepository>()),
        child: const HomeSceen(),
      ),
    );
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // print(Trace.from(StackTrace.current).terse.frames[0]);
    log('onEvent ${event.runtimeType}');
  }

  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('onTransition{ currentState: ${transition.currentState.runtimeType}, event: ${transition.event.runtimeType}, nextState: ${transition.nextState.runtimeType}');
  }
}
