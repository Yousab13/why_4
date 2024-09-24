import 'package:final_why_app/cubit/qestion_cubit.dart';
import 'package:final_why_app/cubit/qestion_state.dart';
import 'package:final_why_app/widgets/form_widegt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AsKAnbaMatawisView extends StatefulWidget {
  const AsKAnbaMatawisView({super.key});
  @override
  State<AsKAnbaMatawisView> createState() => _AsKAnbaMatawisViewState();
}

class _AsKAnbaMatawisViewState extends State<AsKAnbaMatawisView> {
   @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuestionCubit(),
      child: BlocConsumer<QuestionCubit, QuestionState>(
        listener: (context, state) {
          if (state.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('تم ارسال السؤال بنجاح')));
            Navigator.pop(context);
          } else if (state.isError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('حاول مرة أخرى')));
          }
        },
        builder: (context, state) {
          return const Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: FormAskWidget(beshopName: "AnbaMatwes")
              ),
            );
        },
      ),
    );
  }
}
