import '../models/survey.dart';

abstract class SurveyState {}

class SurveyInitial extends SurveyState {}

class SurveyLoading extends SurveyState {}

class SurveyLoaded extends SurveyState {
  final Survey survey;

  SurveyLoaded(this.survey);
}

class SurveyError extends SurveyState {
  final String message;

  SurveyError(this.message);
}
