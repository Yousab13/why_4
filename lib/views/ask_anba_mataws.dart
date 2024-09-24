import 'package:final_why_app/constants.dart';
import 'package:final_why_app/cubit/qestion_cubit.dart';
import 'package:final_why_app/cubit/qestion_state.dart';
import 'package:final_why_app/widgets/custom_button_widget.dart';
import 'package:final_why_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AsKAnbaMatawisView extends StatefulWidget {
  const AsKAnbaMatawisView({super.key});

  @override
  State<AsKAnbaMatawisView> createState() => _AsKAnbaMatawisViewState();
}

class _AsKAnbaMatawisViewState extends State<AsKAnbaMatawisView> {
 final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? name;

  String? content;

   @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuestionCubit(),
      child: BlocConsumer<QuestionCubit, QuestionState>(
        listener: (context, state) {
          if (state.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تم ارسال السؤال بنجاح')));
            Navigator.pop(context);
          } else if (state.isError) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('حاول مرة أخرى')));
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                body: SingleChildScrollView(
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
                                    context.read<QuestionCubit>().submitQuestion(name!, content!,"AnbaMatwes");
                                  }
                                },
                                title: 'ارسل السؤال',
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
