import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajjguide/model/data.dart';
import 'package:sqflite/sqflite.dart';

import 'app_status.dart';

class AppBloc extends Cubit<AppStatus> {
  AppBloc() : super(AppInitialStatus());

  static AppBloc get(context) => BlocProvider.of(context);

  late Database database;
  List<Map> newtTasks = [];


//عمل كرييت لملف ال sqflite وعمل  creat لل Table
  void createDatabase() {
    openDatabase(
      'dataAAb.db',
      version: 1,
      onCreate: (database, version) async {
        print('database created');
        await database
            .execute(
                'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT )')
            .then((value) {
          getDataFromDatabase(database);
          print('Table created');
        }).catchError((error) {
          print('Table is error ${error.toString()}');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('Opened database');
      },
    ).then((value) {
      database = value;
      getDataFromDatabase(database);
      emit(AppCreatDatabaseState());
    });
  }

//حفظ المعلومات داخل الداتا بيز
  Future insertToDatabase({
    required String title,
  }) async {
    return await database.transaction((txn) async {
      return await txn
          .rawInsert(
              'INSERT INTO tasks(title ) VALUES("$title")')
          .then((value) {
        emit(AppInsertDatabaseState());
        print('$value data inserted successful');
        getDataFromDatabase(database);
        emit(AppGetDatabaseState());
      }).catchError((error) {
        print('data inserted error is ${error.toString()}');
      });
    });
  }

  void getDataFromDatabase(database) {
    newtTasks = [];
    database.rawQuery('SELECT * FROM tasks').then((value) {
      emit(AppGetDatabaseState());
      value.forEach((element) {
        newtTasks.add(element);
      });
    });
  }


  void updateDatabase({
    required String status,
    required int id,
  }) {
    database.rawUpdate('UPDATE tasks SET status = ?  WHERE id = ?',
        [status, id]).then((value) {
      getDataFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }

  void deleteDatabase({
    required int id,
  }) {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }


  Dio dio = Dio(
    BaseOptions(
        baseUrl: 'https://api.aladhan.com/v1/timingsByCity?city=Riyadh&country=Saudi%20Arabia&method=4',
        receiveDataWhenStatusError: true  ,

    ),
  );

  DataModel? viewModel;
  void getSala(){
    emit(getTimeInitialState());
    dio.get('today.json').then((value){
      viewModel = DataModel.fromJson(value.data);
      emit(getTimeSuccessState());
    }).catchError((e){
      emit(getTimeErrorState());
      print(e.toString());
    });
  }

}

// DataModel? viewModel;
// void getSalati(){
//   emit(getTimeInitialState());
//   Diohelper.getdata(url: 'v2/top-headlines', query: {
//     'city': 'Riyadh',
//     'country': 'SaudiArabia',
//     'method': '4',
//   }
//   ).then((value){
//     viewModel = DataModel.fromJson(value.data);
//     emit(getTimeSuccessState());
//   }).catchError((error) {
//     emit(getTimeErrorState());
//     print(error.toString());
//   });
// }
