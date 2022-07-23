import 'package:flutter/material.dart';

class InflwanzaScreen extends StatelessWidget {
  const InflwanzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text(' انفلونزا الخنازير',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              ExpansionTile(
                title: Text(''),
                leading: Icon(Icons.arrow_drop_down),
                trailing:  Text('كيف تحدث الإصابة بالمرض ؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''يعتبر العاملون في مجال تربية الخنازير و رعايتها هم أكثر الفئات عرضة لإلصابة بالمرض ؛ حيث تصيب 
فيروسات أنفلونزا الخنازير البشر حين يحدث اتصال بين الناس وخنازير مصابة . 
يمكن أن تصاب الخنازير بأنفلونزا البشر أو أنفلونزا الطيور وعندما تصيب فيروسات أنفلونزا من أنواع مختلفة 
الخنازير يمكن أن تختلط داخل الخنزير وتظهر فيروسات خليطة جديدة . 
ويمكن أن تنقل الخنازير الفيروسات المحورة مرة أخرى إلى البشر عن طريق مالمسة شيء ما به فيروسات 
أنفلونزا ثم لمس الفم أو األنف ومن خالل السعال والعطس.''',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  )
                ],
              ),
              Divider(),
              ExpansionTile(
                title: Text(''),
                leading: Icon(Icons.arrow_drop_down),
                trailing:  Text('اعراض المرض لدى البشر؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '• ارتفاع مفاجئ في درجة الحرارة.                                  ',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '• سعال . . ألم في العضالت .                                           ',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '• إجهاد شديد . ويبدو أن هذه الساللة الجديدة تسبب مزيدا من اإلسهال والقيء أكثر من األنفلونزا العادية',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
