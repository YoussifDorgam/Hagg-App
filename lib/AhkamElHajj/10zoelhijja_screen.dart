import 'package:flutter/material.dart';

class AhkamTenZOElHijja extends StatelessWidget {
  const AhkamTenZOElHijja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'أحكام اليوم العاشر من ذي الحجه',
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
                  '''الأخطاء الشائعة في الدفع من مزدلفة إلى منى:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	البقاء في مزدلفة إلى أن تشرق الشمس، والسنة الدفع منها قبل الشروق، مخالفة للمشركين الذين كانوا  ينتظرون حتى تطلع الشمس. 
2-	سرعة انصراف الناس بسياراتهم مع مزاحمة الحجاج وإيذائهم وتعريضهم لخطر الحوادث وهذا خلاف السنة.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في رمى جمرة العقبة''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1- اعتقاد البعض أنهم برميهم الجمار يرمون الشيطان، وهذا تصور خاطئ، فالرمي إنما شرع لإقامة شعائر الله وذكره سبحانه، ففي مسند الإمام أحمد عن عائشة رضي الله عنها، قالت سمعت رسول الله صلى الله عليه  وسلم  يقول :""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''إنما جعل الطواف بالكعبة، وبين الصفا والمروة، ورمي الجمار؛ لإقامة ذكر الله عز وجل.''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """2 - الرمي بأكثر من سبع حصيات عند كل جمرة.
3-	السب والشتم والصياح عند الرمي، وهذا خلاف هديه صلى الله عليه وسلم في كل وقت، فكيف في هذا  النسك العظيم. 
4-	رمي الجمرة الصغرى والوسطى يوم العيد، والواجب رمي جمرة العقبة الكبرى فقط في ذلك اليوم.  
5-	التزاحم والتدافع عند الرمي، والواجب أن يرفق المسلم بإخوانه، ولا سيما في هذا الموطن 
فالواجب على من قدر على الرمي، أن يباشره بنفسه، ويصبر على المشقة والتعب، فإن الحج نوع من الجهاد،  لا بد فيه من الكلفة والمشقة. 
6-	اعتقاد البعض أن حصى الجمار لابد أن تكون من مزدلفة، ولذلك يقوم بجمعها كلها ليلة مبيته في مزدلفة،  والصواب أنه يجوز له جمعها من أي مكا ن
7-	الرمي بحجارة صغيرة جدًاً أو كبيرة جدًاً، والصواب أن تكون تلك الحجارة متوسطة الحجم، فوق حبة  الحمص، ودون حبة البندق. 
8-	ترك التكبير عند الرمي، والتكبير سنة لا ينبغي تفويتها.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في ذبح الهدى''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	التصدق بقيمة الهدي بدلاً من ذبحه، وهذا لا يجزئ
2-	ذبح الهدي قبل يوم العيد، والواجب أن يكون الذبح في وقته، وهو يوم العيد.
3-	ذبح الهدي خارج الحرم، والواجب أن يكون الذبح داخل حدود الحرم.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في الحلق والتحلل''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1	- اعتقاد البعض أن من السنة استقبال القبلة عند الحلق. 
2	- حلق بعض الرأس، وترك بعضه على هيئة القزع المنهي عنه.
3	- قيام بعض النسوة بإظهار شعورهن أمام الرجال أثناء الحلق.
4	- اعتقاد البعض أنه لا يجوز للمحرم أن يحلق أو يقصرِّ شعر محرم آخر يريد التحلل.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في طواف الإفاضة''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """النطق بالنية عند الشروع في الطواف، والصواب أن النية محلها القلب فلا يتلفظ بها.
2 - الطواف من داخل ال حجْر، وهذا خطأ عظيم فلا يصح الطواف إلا بجميع البيت ومن طاف بالبيت واستثنى الحجر  فقد طاف ببعض البيت ولم يطف به كله. 
3- اعتقاد أن الطواف لا يصح دون استلام الحجر الأسود، والصواب أن تقبيل الحجر سنة وليس شرطا لصحة الطواف، فإذا لم يتمكن الطائف  من الوصول إليه إلاَّ بالمزاحمة الشديدة وإيذاء الناس، فالواجب ترك الاستلام والتقبيل  والاكتفاء بالإشارة. 
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '''الأخطاء الشائعة في السعى ''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	رفع اليدين عند صعود الصفا والمروة كرفعهما في الصلاة، والسنة أن يرفع يديه كهيئة الداعي، ويحمد الله ويكبره  ويدعو مستقبلاً القبلة.
2-	الإسراع في السعي بين الصفا والمروة في كل الشوط، وهو خطأ، والسنة الإسراع بين العلمين الأخضرين،  والمشي في بقية الشوط. 
3-	إسراع النساء في السعي بين العلمين، وهو خلاف السنة، والإسراع إنما هو خاص بالرجال دون النساء. 
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
