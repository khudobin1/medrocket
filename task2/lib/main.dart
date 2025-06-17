import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/survey_bloc.dart';
import 'package:task2/bloc/survey_state.dart';
import 'package:task2/data/survey_repository.dart';

import 'bloc/survey_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final repository = MockedSurveyRepository();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Survey',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (_) => SurveyBloc(repository)..add(LoadSurvey()),
        child: SurveyPage(),
      ),
    );
  }
}

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Survey")),
      body: Center(
        child: BlocBuilder<SurveyBloc, SurveyState>(
          builder: (context, state) {
            if (state is SurveyInitial) return Text("Ожидание загрузки...");
            if (state is SurveyLoading) return CircularProgressIndicator();
            if (state is SurveyLoaded) {
              final percentage = state.survey.completionPercent;
              final status = percentage == 0
                  ? "Опросник не заполнен"
                  : percentage == 100
                  ? "Опросник заполнен полностью"
                  : "В процессе - $percentage%";
              return Text(status);
            }
            if (state is SurveyError) return Text("Ошибка: ${state.message}");
            return SizedBox();
          },
        ),
      ),
    );
  }
}
