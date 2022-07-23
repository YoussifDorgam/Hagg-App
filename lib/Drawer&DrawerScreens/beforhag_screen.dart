import 'dart:ui';

import 'package:flutter/material.dart';

class BeforElHajj extends StatelessWidget {
  const BeforElHajj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('قبل الحج',style: TextStyle(color: Colors.black),),
        centerTitle: true,
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
                trailing:  Text('الحقيبه الطبيه ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
  - ينصح كل حاج بتجهيز حقيبته الطبية لمواجهة أي طارئ صحي - ال قدر هللا إال الخير - أثناء تأدية المناسك 
والغالب أن الحجاج اآلن يحجون في حمالت منظمة تعتني بمثل هذه األمور بل ربما يكون في الحملة وهذا جيد ومفيد . 
وهناك نوعان من األدوية يجب توفيرها في الحقيب ة الطبية : 
األدوية العامة : 
والتي قد يحتاج إليها الحاج عند إصابته ببعض الوعكات الصحية ، ومن هذه األدوية مضاد للسعال وطارد للبلغم . 
كريمات وبودرة لالستخدام عند حدوث تسلخات ف ي الجلد كريمات ومراهم إلصابات العضالت . كريمات للجروح . 
األدوية الخاصة: 
أدوية السكري وارتفاع ضغط الدم والربو وأمراض القلب . 
فهذه البد ألن يوفرها كل حاج لنفسه ، وبكميات تكفيه طيلة مدة الحج ، مع أخذ كمية إضافية لمدة ثالث أيام احتياطا
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
                trailing:  Text('البطاقه الطبيه',
                  textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
على الحاج الذي يعاني من مرض ما أن يحرص على حمل بطاقة طبية تحوي تفاصيل حالته المرضية ؛ حتى تتم 
معالجته بسرعة لدى تعرضه ألي طارئ صحي ، ويفضل أن تكون هذه البطاقة على هيئة سوار حول المعصم .
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
                trailing:  Text('مواد النظافه',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
يجب ان يحرص الحاج علي توفير مواد التنظيف الخاصه مثل
الصابون – المناشف – الفرشاه االسنان - االت الحالقه''',
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
                trailing:  Text('المظله الشمسيه',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
 ان التعرض لحرارة الشمس قد يكون مضراً جداً ، ومن ثم فإن المظلة الشمسية أصبحت اآلن قضية أساسية في الحج 
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
                trailing:  Text('ملابس مناسبه',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        ''' 
المعروف أن الطقس في مكة والمشاعر المقدسة في الغالب حار جاف مشمس ، وعلى الحاج القادم من بالد ذات  أجواء مختلفة أن يراعي ذلك
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
