import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class NineZoElHijjaScreen extends StatefulWidget {
  const NineZoElHijjaScreen({Key? key}) : super(key: key);

  @override
  State<NineZoElHijjaScreen> createState() => _NineZoElHijjaScreenState();
}

class _NineZoElHijjaScreenState extends State<NineZoElHijjaScreen> {
  bool audio1 =
      false; // this variable to toggle between play music or stop music
  bool audio2 = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player?.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'التاسع من ذو الحجه',
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
                  '''يوم التاسع من ذى الحجه , يوم عرفه الوقوف بعرفه:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ هو أهم أركان وقد قال رسول صلى الله عليه وسلم :" الحج عرفه""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' بعد طلوع الشمس في يوم عرفة يتوجه الحاج من مِنى إلى عرفات ويقول في مسيره:''',
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  audio1 = !audio1;
                                });
                                if (audio1 == true) {
                                  playFile('9hga1.ogg');
                                  setState(() {
                                    audio2 = false;
                                  });
                                } else {
                                  setState(() {
                                    audio1 == false;
                                  });
                                  stopFile();
                                }
                              },
                              icon: Icon((audio1 == false)
                                  ? Icons.play_arrow
                                  : Icons.stop),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  """ اللهم إليك توجهت, ووجهَك الكريمَ أردت فاجعل ذنبي مغفوراا وحجي مبرورا,ا وارحمني إنك على كل شيء قدير.""",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  """ويكثر الحاج من التلبية وقراءة القرآن ومن قول ربنا آتنا في الدنيا حسنة.....، ويقف في عرفات.
 وعرفات كلها موقف, ولكن أفضلها موقف رسول الله صلى الله عليه وسلم عند الصخرات الكبار في أسفل جبل الرحمة
 وإذا وقع بصره على جبل الرحمة يسبح الله ويكبره.
ويسن أن يتوجه إلى مسجد نمرة لسماع الخطبة, ويصلي الظهر والعصر جمع تقديم بوقت الظهر بآذان واحد وبإقامتين مع الإمام العام  بدون أن يصلي السنن بينهما.
 ويحاول جاهداا أن يكون حاضر القلب و يحاول جاهداا البكاء.
 ويكثر من الدعاء و التهليل وقراءة القرآن قائماا وقاعداا, ويخفض صوته في الدعاء, ويلح في الدعاء.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' ويستحب هذا الدعاء:''',
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  audio2 = !audio2;
                                });
                                if (audio2 == true) {
                                  playFile('9hga2.ogg');
                                  setState(() {
                                    audio1 = false;
                                  });
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((audio2 == false)
                                  ? Icons.play_arrow
                                  : Icons.stop),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  """ لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.""",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  """ويكرره ثلاثاا و يحرص على أن يكون مستقبل الكعبة المشرفة وأن يفتح ويختم دعاءه بالتحميد والتمجيد والتسبيح لله والصلاة على النبي  صلى الله عليه وسلم.
 يسن للحاج أن يغتسل من أجل مناسك عرفة.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' الإفاضه الى مزدلفه:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """-إذا غربت الشمس، اذهب إلى مزدلفة فإذا وصلتها ص لِ المغرب والعشاء جم اعا وقص ارا بأذان واحد وإقامتين قبل أن تحط رحلك، وقبل  جمع الحصى.
-بِتْ في مزدلفة وص لِ الفجر في أول وقته وأكثر من الدعاء والذكر حتى الإسفار ,المبيت واجب حتى طلوع الفجر والأفضل حتى  الإسفار، ويجوز للضعفاء من الرجال والنساء أن يدفعوا في آخر الليل بعد غياب القمر لتجنب الزحام.
 -التقط سبع حصيات لرمي جمرة العقبة الأولى، ومن أي مكان أخذتها جاز.
 -اذهب إلى منى قبل طلوع الشمس. 
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
