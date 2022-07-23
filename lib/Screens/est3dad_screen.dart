import 'package:flutter/material.dart';

class Est3daScreen  extends StatelessWidget {
  const Est3daScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          ' الاستعداد للحج',
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
                  ' الاستعداد الروحي والنفسي',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """-تجديد العهد مع الله سبحانه وتعالى بالتوبة، فإنما الأعمال بالنيات وإنما لكل امرئ ما نوى.
-	حرص كل حاج في الحفاظ على الصلوات جماعة ما استطاع، والاستغفار وقراءة القرآن والتحلي بأخلاق الإسلام ليعد نفسه  للخضوع إلى الله طاهر القلب في تلك الرحلة الإيمانية.
-	شكر الله على نعمة إتاحة الفرصة لأداء الفريضة.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' وقد ثبت في الصحيحين من حديث أبي هريرة رضي الله عنه قال:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
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
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'سمعت رسول الله صلى الله عليه وسلم يقول: من حج فلم يرفث ولم يفسق رجع كيوم ولدته أمه متفق عليه، وقال صلى الله  عليه وسلم: العمرة إلى العمرة كفارة لما بينهما، والحج المبرور ليس له جزاء إلا الجنة، متفق عليه.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'الإعداد العقلي',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """- على كل حاج تثقيف نفسه دينيا قبل تلك الرحلة الإيمانية بجمع معلومات كافية عن أداء طقوس الحج من خلال مصادر  موثوقة، والاستفسار من أهل العلم فيما يجهل من أمور الحج أو يشكل عليه.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  'الاستعداد بدنيا وصحيا',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """-	الحج رحلة تعبدية تحتاج إلى جهد بدني خلال الطواف والسعي والتنقل بين المشاعر المقدسة، ويجب الاستعداد له وتهيئة الجسد لذلك، وينصح الخبراء بممارسة التمارين الرياضية، لا سيما المشي يوميا لمدة نصف ساعة على الأقل، مع محاولة أن  تزيد المدة تدريجياً حتى تقوى عضلاتك وتتعود على المجهود البدني.
-	الحصول على جميع التطعيمات اللازمة لأداء الحج وعمل كل الفحوصات الطبية، ويفضل عمل فحص طبي شامل ليكون الحاج على أتم الاستعداد لهذه الرحلة، والتطعيمات اللازمة هي لقاحات: الحمى الشوكية، والإنفلونزا الموسمية، إضافة إلى اللقاح المضاد لفيروس كورونا، مع ضرورة استكمال الجرعتين، مع إمكانية الاكتفاء بحرعة واحدة للمتعافي من فيروس  كورونا.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  'الاستعداد المادي والمالي',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """- يجب على الحج معرفة تكاليف رحلة الحج وتوفيرها، وشراء كل العناصر اللازمة لأداء الفريضة.""",
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
