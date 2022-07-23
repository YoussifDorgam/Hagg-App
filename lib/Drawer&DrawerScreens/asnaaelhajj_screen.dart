import 'package:flutter/material.dart';

class AsnaaElHAjjScreen extends StatelessWidget {
  const AsnaaElHAjjScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text('أثناء الحج',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  const [
              ExpansionTile(
                title: Text(''),
                leading: Icon(Icons.arrow_drop_down),
                trailing:  Text('الطعام',
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
هناك إجراءات وقائية وسهلة ، لكن تجاهلها قد يسبب مشاكل صحية:
ومن هذه اإلجراءات : • الحرص الشديد على النظافة
• الحرص على نظافة األواني المستعملة إلعداد وتناول الطعام
والحرص على غسل الفواكه والخضروات قبل تناولها .
• عدم شراء األطعمة المكشوفة
• أن تكون مياه الشرب والطبخ من المياه المعلبة.
• عدم شراء السلطات واألطعمة التي تباع في الطرقات من الباعة المتجولين.
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
                trailing:  Text('المياه',
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''
ينصح الحجاج دوماً بشرب كميات كافية من السوائل لتعويض النقص في المياه نتيجة المجهود وارتفاع درجات
الحرارة.
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
                trailing:  Text('الادويه',
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''
يجب على الحاج العناية بكيفية حفظ األدوية ، خاصة في الجو الحار للمشاع
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
                trailing:  Text('الحلاقه',
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        '''
عدم استعمال أمواس حالقة مستعملة ، ألن كثيرا من األمراض المعدية التي تنتقل عن طريق الدم. 
على كل حاج أن يستعمل الموس لمرة واحدة ثم يرمي به في المكان المخصص لذلك 
                        ''',
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
