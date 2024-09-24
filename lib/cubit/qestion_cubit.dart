import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_why_app/cubit/qestion_state.dart';


class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionState());

  Future<void> submitQuestion(String name, String content, String collectionName) async {
    emit(QuestionState(isLoading: true));

    try {
      await addQuestion(name: name, content: content, collectionName: collectionName);
      emit(QuestionState(isSuccess: true));
    } catch (e) {
      emit(QuestionState(isError: true));
    } finally {
      emit(QuestionState(isLoading: false));
    }
  }

  Future<void> addQuestion({
    required String name,
    required String content,
    required String collectionName,
  }) async {
    try {
      await FirebaseFirestore.instance.collection(collectionName).add({
        'name': name,
        'content': content,
      });
    } catch (e) {
  
      // ignore: use_rethrow_when_possible
      throw e; // Re-throw to catch in submitQuestion
    }
  }
}