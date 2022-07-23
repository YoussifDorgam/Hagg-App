import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajjguide/cubit/app_status.dart';
import 'package:hajjguide/cubit/bloc.dart';

class NoteScreen extends StatelessWidget {
  var noteController = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc()..createDatabase(),
      child: BlocConsumer<AppBloc, AppStatus>(
          listener: (context, state) {},
          builder: (context, state) {
            AppBloc cubit = AppBloc.get(context);
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
                backgroundColor: const Color(0xffE9EFC9),
                title: const Text(
                  'ذكرنى',
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
              ),
              body: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: defultEditText(
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'لا يمكنك ترك مفكرتك فارغه';
                            }
                            return null;
                          },
                          onchanged: (value) {
                            print(value);
                          },
                          onfiled: (s) {
                            print(s);
                            if (scaffoldKey.currentState != null &&
                                formKey.currentState != null &&
                                formKey.currentState!.validate()) {
                              cubit.insertToDatabase(
                                title: noteController.text,
                              );
                            }
                          },
                          Controlar: noteController,
                          keyboardType: TextInputType.text,
                          Lable: 'اكتب مفكرتك',
                          prefix: Icons.title,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 9,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              buildNoteItem(cubit.newtTasks[index], context),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemCount: cubit.newtTasks.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget buildNoteItem(Map model, context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  AppBloc.get(context).deleteDatabase(id: model['id']);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              Expanded(
                  child: Text(
                '${model['title']}',
                textDirection: TextDirection.rtl,
              )),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      );

  Widget defultEditText({
    required TextEditingController Controlar,
    required TextInputType keyboardType,
    Function? onfiled,
    Function? onchanged,
    GestureTapCallback? ontab,
    FormFieldValidator<String>? validator,
    required String Lable,
    required IconData prefix,
    IconData? sufix,
    bool? obscureText = false,
  }) =>
      TextFormField(
        onTap: ontab,
        obscureText: obscureText!,
        controller: Controlar,
        keyboardType: keyboardType,
        onFieldSubmitted: (s) {
          onfiled!(s);
        },
        onChanged: (s) {
          onchanged!(s);
        },
        validator: validator,
        decoration: InputDecoration(
          labelText: Lable,
          hoverColor: Colors.teal,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          prefixIcon: Icon(
            prefix,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              noteController.clear();
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.redAccent,
            ),
          ),
        ),
      );
}
