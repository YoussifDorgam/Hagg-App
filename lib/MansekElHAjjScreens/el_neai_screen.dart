import 'package:flutter/material.dart';

class ElNeaScreen extends StatelessWidget {
  const ElNeaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'النيه',
          style: TextStyle(fontSize: 25,color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
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
              children: [
                const Text(
                  ' وجوه أداء الحج وهي ثلاثة :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """
1-	الإفراد: و هو نية الحج فقط.
2-	التمتع: و هو نية العمرة أولاً أي يحرم بالعمرة من ميقات بلده و يفرغ منها ثم يحرم للحج من مكة
 وسمي متمتعاً لاستمتاعه بمحظورات الإحرام بين العمرة و الحج.
3-	القِران: و هو نية الحج و العمرة معاً أي يحرم للحج و العمرة معاً
قال الله تعالى:( فمََنْ تمََتعََّ باِلْعمُْرَةِ إلِىَ الْحَجِ فمََا اسْتيَْسَرَ مِنَ الْهَدْي فمََنْ لمَْ يَجِدْ فَصِياَمُ  ثلَاثةَِ أيَاَّمٍ فِي الْحَجِ وَسَبْعَةٍ إذِاَ رَجَعْتمُْ تلِْكَ عَشَرَةٌ  كَامِلَة ذٌلَِكَ  لِمَنْ لمَْ يكَُنْ  أهَْلهُُ حَاضِرِي الْمَسْجِدِ الْحَرَامِ) 
يجب على القارن والمتمتع أن يذبح شاةً هدي شكراً لله تعالى, حيث وفقه أن يأتي بالعمرة والحج في أشهر الحج في سفر واحد, فإن لم  يجد لزمه صوم ثلاثة أيام في الحج وسبعة إذا رجع إلى أهله.
                """,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                    child: Column(
                      children: const [
                        Text(
                          'حج التمتع',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent),
                          textDirection: TextDirection.rtl,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            """الناس الذين يأتون إلى المملكة العربية السعودية من دول أخرى عادة ما تؤدي حج التمتع,الإحرام يرتدينه في أو قبل الميقات هو للعمرة فقط وأداء مناسك العمرة أولا، ثم انهم يتسللون الى ملابسهم العادية وفي 8 ذو الحجة وضعوا على الإحرام للحج في مكان إقامتهم في مكة المكرمة وأداء مناسك الحج. يؤخذ تشغيله في يوم النحر. يوضح هذا التطبيق الإجراء لأداء فريضة حج  التمتع""",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
