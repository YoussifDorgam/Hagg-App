import 'package:flutter/material.dart';

class WomanAndHajjScreen extends StatelessWidget {
  const WomanAndHajjScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text('المرأه والحج',style: TextStyle(color: Colors.black),),
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
                trailing:  Text('الدورة الشهريه',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''   تفضل كثير من النساء المقبالت على الحج استخد ام حبوب منع الدورة الشهرية ؛ حتى تتمكن من تأدية المناسك
مع أقاربها ورفقتها وحبوب منع الدورة أنواع• إن الهدف من هذه األدوية هو منع نزول الدم ، ولهذا يجب أن تؤخذ يوميا ، في نفس الوقت وبنفس الجرعة 
المحددة ، حتى تنتهي المناسك .
• استخدام بعض العقاقير.
                        ''',
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
                trailing:  Text('الحمل',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''نصائح صحية للحامل قبل الحج ..
• استشارة الطبيبة المختصة ، حتى تعرف إمكانية سفرها للحج دون حدوث أية مضاعفات صحية 
• أخذ كل األدوية الضرورية وبالقدر الذي يكفيها حتى الفراغ من الحج . 
• ارتداء المالبس القطنية الواسعة ، حتى ال تتعرض للتعرق الذي يفقدها الكثير من السوائل . 
محاذير تمنع الحامل من الذهاب إلى الحج إذا كان لديها تاريخ مرضي ووالدات مبكرة . ''',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
