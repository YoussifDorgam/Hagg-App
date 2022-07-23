import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class SaiiScreen extends StatefulWidget {
  const SaiiScreen({Key? key}) : super(key: key);

  @override
  State<SaiiScreen> createState() => _SaiiScreenState();
}

class _SaiiScreenState extends State<SaiiScreen> {
  bool audio1 =
      false; // this variable to toggle between play music or stop music
  bool audio2 = false;
  bool audio3 =
      false; // this variable to toggle between play music or stop music
  bool audio4 = false;
  bool audio5 =
      false; // this variable to toggle between play music or stop music
  bool audio6 = false;

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
          'السعي',
          style: TextStyle(fontSize: 25,color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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
                  '''السعي بين الصفا و المروة''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' يصعد إلى الصفا بحيث يرى الكعبة إذا أمكن من باب الصفا ويقول حين الصعود:''',
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
                                  playFile('sa3y1.ogg');
                                  setState(() {
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                  });
                                  print(audio2);
                                } else {
                                  stopFile();
                                  print(audio2);
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
                                  """ إنَِّ الصَّفاَ وَالْمَرْوَةَ مِنْ شَعاَئِرِ اللََِّّه فمََنْ حَجَّ الْبيَْتَ أوَِ اعْتمََرَ فلَا جُناَحَ عَليَْهِ أنَْ يطََّوَّفَ بهِِمَا وَمَنْ تطََوَّعَ خَيْرا فإَنَِّ اللَََّّه شَاكِرٌ عَلِيم""",
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
                  '''ثم يقول ثلاث مرات:''',
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
                                  playFile('sa3y2.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                  });
                                  print(audio2);
                                } else {
                                  print(audio2);
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
                                  """الله أكبر الله أكبر، الله أكبر و لله الحمد، الله أكبر على ما هدانا والحمد لله على ما أولنا، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد يحيي ويميت، بيده الخير، وهو على كل شيء قدير، لا إله إلا الله وحده، صدق وعده، ونصر عبده، وأعز جنده ،و هزم الأحزاب و حده، لا إله إلا الله، ول نعبد إلا إياه مخلصين له الدين ولو كره الكافرون، اللهم إنك قلت: ادعوني استجب لكم, وإنك لا تخلف الميعاد ، وإني أسألك كما هديتني للإسلام أن لا تنزعه مني حتى تتوفاني وأنا مسلم. """,
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
                  '''ثم يصلي على سيدنا محمد صلى الله عليه وسلم ويقول عند هبوطه من الصفا في كل شوط:''',
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
                                  audio3 = !audio3;
                                });
                                if (audio3 == true) {
                                  playFile('sa3y3.ogg');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                  });
                                } else {
                                  setState(() {
                                    audio1 == false;
                                  });
                                  stopFile();
                                }
                              },
                              icon: Icon((audio3 == false)
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
                                  """ اللهم إني أسألك موجبات رحمتك وعزائم مغفرتك والسلامة من كل إثم والغنيمة من كل بر والفوز بالجنة والنجاة من النار.""",
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
                  """ يسُن أن يهرول بين الميلين الأخضرين للرجل فقط.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  '''يدعو بين الميلين الأخضرين:''',
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
                                  audio4 = !audio4;
                                });
                                if (audio4 == true) {
                                  playFile('sa3y4.ogg');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio5 = false;
                                    audio6 = false;
                                  });
                                } else {
                                  setState(() {
                                    audio1 == false;
                                  });
                                  stopFile();
                                }
                              },
                              icon: Icon((audio4 == false)
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
                                  """ربنا أتنا في الدنيا حسنة وفي الْخرة حسنة وقنا عذاب النار، رب اغفر وارحم، واعف وتكرم، وتجاوز عما تعلم, إنك أنت الأعز الأكرم ، اللهم إني أسألك الهدى والتقى والعفاف والغنى، اللهم اعني على ذكرك وشكرك وحسن عبادتك.""",
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
                  """ثم يصل إلى المروة فهذا شوط واحد فيتم سبعة أشواط يبدأ أولها بالصفا وينتهي آخرها بالمروة.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' عندما يقف عند المروة يقول:''',
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
                                  audio5 = !audio5;
                                });
                                if (audio5 == true) {
                                  playFile('sa3y5.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio6 = false;
                                  });
                                } else {
                                  setState(() {
                                    audio1 == false;
                                  });
                                  stopFile();
                                }
                              },
                              icon: Icon((audio5 == false)
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
                                  """إنَِّ الصَّفاَ وَالْمَرْوَةَ مِنْ شَعاَئِرِ اللََِّّه....""",
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
                  '''ويقول نفس الأذكار والدعوات التي قالها عند الصفا ،يلبي الحاج في السعي، لا المعتمر.
 بعد ختام الشوط السابع من السعي يستحب صلاة ركعتين, وفي الحرم أفضل.
 ويستحب أن يجمع في السعي بين الأذكار والدعوات وما تيسر من القرآن الكريم.
''',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  '''ويقول بعد تمام السعي:''',
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
                                  audio6 = !audio6;
                                });
                                if (audio6 == true) {
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                  });
                                  playFile('sa3y6.mp3');
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((audio6 == false)
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
                                  """ربنا تقبل منا وعافنا واعف عنا وعلى طاعتك وشكرك أعنا.""",
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
                  '''لا يشترط الضطباع في السعي عند الحنفية أما عند الشافعية فنعم.
 لا تشترط الطهارة لصحة السعي ولكن باعتبار أن المسعى أصبح داخل الحرم فيستحب ذلك.
 في حال انقطاع السعي بسبب الصلاة أو أي سبب آخر كان فيكمل السعي من حيث توقف.
في حال أراد الحاج المتمتع أن يقدم سعي الحج على طواف الإفاضة فبإمكانه ذلك ويكون بأن ينشئ طواف نفل بعد أن يحرم في الثامن  من ذي الحجة ويسعى بعده سعي الحج.
''',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """الحلق أو التقصير:""",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  """إذا أكملت السعي، احلق شعرك أو قصره والحلق أفضل أما إذا كان قدومك مكة قري ابا من وقت الحج فالتقصير أفضل لتحلق بقية شعرك   في الحج أما المرأة فتقصر من كل ضفيرة قدر أنملة.
 اخلع إحرامك والبس ثيابك.وبذلك تكون قد أديت عمرة كاملة إن أردتها مستقلة، أو أردتها للحج إن كنت متمت اعا.
وأما إن كنت مفر ادا للحج أو قارناا، فتنوي الطواف للقدوم وهو سنة  والسعي للحج  وهو ركن، ثم تبقي على إحرامك ول تخلعه ول تحلق  ول تقصر حتى يوم الثامن من ذي الحجة، فتأتي ببقية أعمال الحج.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
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
