import 'package:final_why_app/constants.dart';
import 'package:final_why_app/cubit/qestion_cubit.dart';
import 'package:final_why_app/cubit/qestion_state.dart';
import 'package:final_why_app/widgets/custom_button_widget.dart';
import 'package:final_why_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAskWidget extends StatefulWidget {
  final String beshopName;
  const FormAskWidget({super.key, required this.beshopName});


  @override
  State<FormAskWidget> createState() => _FormAskWidgetState();
}

class _FormAskWidgetState extends State<FormAskWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? name;
  String? content;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionCubit, QuestionState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  CustomTextField(
                    maxlines: 1,
                    hintline: "الاسم",
                    onSaved: (value) {
                      name = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    maxlines: 5,
                    hintline: "السؤال",
                    onSaved: (value) {
                      content = value;
                    },
                  ),
                  const SizedBox(height: 40),
                  state.isLoading
                      ? const CircularProgressIndicator(
                          color: kprimeryColor,
                        )
                      : CustomButtonSend(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save(); // Save the form
                              context
                                  .read<QuestionCubit>()
                                  .submitQuestion(name!, content!, widget.beshopName);
                            }
                          },
                          title: 'ارسل السؤال',
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
