import 'package:task2/models/survey.dart';

abstract class SurveyRepository {
  Future<Survey> fetchSurvey();
}

class MockedSurveyRepository implements SurveyRepository {
  @override
  Future<Survey> fetchSurvey() async {
    await Future.delayed(Duration(seconds: 1));
    return Survey(completionPercent: 44);
  }
}