import 'package:flutter/material.dart';

class AhkamNineZOElHijja extends StatelessWidget {
  const AhkamNineZOElHijja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'أحكام اليوم التاسع من ذي الحجه',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/test.jpg'),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '''يوم عرفه
الأخطاء الشائعة في الوقوف بعرفة
                  ''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	صيام الحاج يوم عرفة
2-	الانصراف من عرفة قبل غروب الشمس، وهو حرام  
3-	عدم مراعاة حدود عرفة 
4-	التكلف بالذهاب للجبل (جبل الرحمة)، وصعوده، والتمسح به، واعتقاد أن له مزية وفضيلة توجب ذلك،
وهذا لم يرد عن النبي صلى الله عليه وسلم .
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في الإفاضة إلى مزدلفة''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1	- سرعة انصراف الناس بسياراتهم مع مزاحمة الحجاج وإيذائهم وتعريضهم لخطر الحوادث وهذا خلاف السنة 
2	- عدم تحري بعض الحجاج لحدود مزدلفة، فيبيتون خارجها، والمبيت بمزدلفة من واجبات الحج
3-	تسرع كثير من الحجاج عند صلاة المغرب والعشاء، وعدم تحريهم اتجاه القبلة الصحيح والسؤال عن ذلك  وكذا في صلاة الفجر. 
4-	تأخير صلاتي المغرب والعشاء إلى ما بعد منتصف الليل، والسنة للحاج أن يصليهما جمعاً في مزدلفة، قبل خروج  وقت العشاء، وهو نصف الليل، فإذا لم يمكنه ذلك، فيصليهما في أي مكان قبل خروج الوقت .
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
