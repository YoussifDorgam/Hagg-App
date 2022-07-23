import 'package:flutter/material.dart';

class AhkamBeforEightZOElHijja extends StatelessWidget {
  const AhkamBeforEightZOElHijja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'أحكام قبل 8 ذي الحجه ',
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
                  '''الأخطاء الشائعة في الإحرام''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	تجاوز الميقات دون إحرام.
2-	الاعتقاد بأن الإحرام هو ارتداء ملابس الإحرام التي هي الرداء والإزار، وهذا غير صحيح، بل لابد  لصحة الإحرام من نية الدخول في النسك.
3-	وضع ال ِّطيب على الرداء أو الإزار قبل الإحرام، وهذا من الأخطاء؛ إذ السُّنَّة في ذلك وضع ال ِّطيب على  البدن قبل الإحرام، أما ملابس الإحرام فلا يط ِّيبها. 
4-	اعتقاد أن الغسل أو الوضوء عند الإحرام واجب، وإنما هو سنة مستحبة، فلو أحرم من غيرهما فإن  إحرامه صحيح.
5-	كشف المحرم كتفه الأيمن دائمًا من حين إحرامه من الميقات، وهو ما يسمى بـ "الاضطباع" وهو خلاف السُّنَّة، وإنما فعل النبي صلى الله عليه وسلم ذلك في طواف القدوم وطواف العمرة فحسب، فإذا انتهى المحرم 
من طوافه أعاد رداءه على كتفيه في بقية المناسك. وكذلك يغطي كتفيه إذا كان في صلاة أثناء طوافه ثم يكشفه  بعدها فيما بقي من طوافه. 
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في الطواف''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	النطق بالنية عند الشروع في الطواف، والصواب أن النية محلها القلب فلا يتلفظ بها.
2-	اعتقاد أن الطواف لا يصح دون استلام الحجر الأسود، والصواب أن تقبيل الحجر سنة فقط ، فإذا لم يتمكن الطائف من الوصول إليه إلاَّ بالمزاحمة الشديدة وإيذاء الناس، فالواجب ترك الاستلام والتقبيل  والاكتفاء بالإشارة. 
3-	الرَّمَلُ في جميع الأشواط، والمشروع أن يكون الرمل في الأشواط الثلاثة الأولى من طواف القدوم  وطواف العمرة دون غيره من الطواف. 
4-	مزاحمة النساء للرجال في الطواف والعكس، والواجب على كل من المرأة والرجل أن يحترزا من ذلك.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في السعى''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	إسراع النساء في السعي بين العلمين، وهو خلاف السنة، والإسراع إنما هو خاص بالرجال دون النساء.
2-	قراءة قوله تعالى:   إن الصفا والمروة من شعائر الله
في كل شوط كلما أقبل على الصفا والمروة، والسنة قراءتها عند بداية السعي، إذا دنا من الصفا، كما ثبت عن  (النبي صلى الله عليه وسلم).
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
