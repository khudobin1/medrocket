import "package:flutter_bloc/flutter_bloc.dart";
import "package:task2/bloc/survey_event.dart";
import "package:task2/bloc/survey_state.dart";
import "package:task2/data/survey_repository.dart";

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final SurveyRepository repository;

  SurveyBloc(this.repository) : super(SurveyInitial()) {
    on<LoadSurvey>((event, emit) async {
      emit(SurveyLoading());
      try {
        final survey = await repository.fetchSurvey();
        emit(SurveyLoaded(survey));
      } catch (e) {
        emit(SurveyError("Ошибка загрузки опросника: ${e}"));
      }
    });
  }
}
