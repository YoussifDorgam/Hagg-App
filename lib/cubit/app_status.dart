abstract class AppStatus {}

class AppInitialStatus extends AppStatus {}


class AppCreatDatabaseState extends AppStatus {}

class AppInsertDatabaseState extends AppStatus {}

class AppGetDatabaseState extends AppStatus {}

class AppUpdateDatabaseState extends AppStatus {}

class AppDeleteDatabaseState extends AppStatus {}

class getTimeSuccessState extends AppStatus {}
class getTimeErrorState extends AppStatus {}
class getTimeInitialState extends AppStatus {}