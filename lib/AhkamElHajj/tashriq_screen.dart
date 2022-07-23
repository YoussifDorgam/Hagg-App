import 'package:flutter/material.dart';

class AhkamTashriqZOElHijja extends StatelessWidget {
  const AhkamTashriqZOElHijja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'اعمال ايام التشريق  ',
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
                  ''' الأخطاء الشائعة في رمى الجمرات ''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	رمي الجمرات الثلاث في أيام التشريق قبل الزوال، وهذا لا يجوز؛ لأن النبي صلى الله عليه وسلم لم يرم إلا بعد  الزوال، ومن شق عليه الرمي بعد الزوال، فليؤخره إلى العصر أو المساء. 
2-	اعتقاد البعض أنهم برميهم الجمار يرمون الشيطان، وهذا تصور خاطئ، فالرمي إنما شرع لإقامة شعائر الله  وذكره سبحانه. 
3-	رمي حصى الجمارجميعًا مرة واحدة، والواجب أن يرمي الحصيات السبع، واحدة بعد واحدة، فإذا رماها الحاج  رمية واحدة لم تجزئ عنه، وكانت كرمي حصاة واحدة. 
4-	اعتقاد البعض أنه لا بد من إصابة الشاخص أو العمود، والصواب أن ذلك ليس بشرط. 
5-	وضع الحصى في الحوض من غير رمي، وهذا خلاف السنة، ولا يسُمى ذلك رمياً.
6-	الرمي بحجارة صغيرة جدًاً أو كبيرة جدًاً، والصواب أن تكون تلك الحجارة متوسطة الحجم، فوق حبة الحمص،  ودون حبة البندق. 
7-	ترك التكبير عند الرمي، والتكبير سنة لا ينبغي تفويتها.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  ''' الأخطاء الشائعة في المبيت بمنى''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	ترك الجهر بالتلبية قبل رمي الجمرة الكبرى: وهذا مخالف للسنة بل يجهر بها ما استطاع حتى يصل إلى الجمرة  الكبرى يوم النحر وعندئذ تنتهي التلبية. 
2-	عدم المبيت بمنى: قبل يوم عرفة، وهذا خلاف السنة وإن كان لا يجب. 
3-	جمع الصلوات في منى: وهذا مخالف للسنة، فإن النبي صلى الله عليه وسلم كان يصلي كل صلاة في وقتها في  منى قصرا من غير جمع.
4-	ترك المبيت بمنى ليالي التشريق بدون عذر: وهو واجب من واجبات الحج لا يجوز التهاون فيه.
5-	المبيت في الشوارع وتحت الجسور العلوية مع الاختلاط، وانكشاف النساء ونومهن أمام الرجال وانكشاف  عوراتهن عند النوم والأكل وغير ذلك. وكل هذه أمور لا تجوز.
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
