import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class TenZoElHijjaScreen extends StatefulWidget {
  const TenZoElHijjaScreen({Key? key}) : super(key: key);

  @override
  State<TenZoElHijjaScreen> createState() => _TenZoElHijjaScreenState();
}

class _TenZoElHijjaScreenState extends State<TenZoElHijjaScreen> {
  bool audio1 =
      false; // this variable to toggle between play music or stop music
  bool audio2 = false;
  bool audio3 =
      false; // this variable to toggle between play music or stop music
  bool audio4 = false;
  bool audio5 =
      false; // this variable to toggle between play music or stop music
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
          ' العاشر من ذو الحجه',
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
                  ''' السير إلى مِنى/ يوم النحر''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ بعد صلاة الصبح وقبل طلوع الشمس يتوجه الحاج إلى مِنى ويبذل جهده في الإكثار من التلبية.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  '''ويستحسن أن يقول في مسيره:''',
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
                                  playFile('10hga1.ogg');
                                  setState(() {
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
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
                                  """اللهم إليك أفضت، ومن عذابك أشفقت، وإليك توجهت، ومنك رهبت، اللهم تقبل نسكي، وأعظم أجري، وارحم تضرعي، واستجب  دعوتي.""",
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
                  """ ويصلي على النبي صلى الله عليه وسلم.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' فإذا بلغ وادي محسر أسرع بقدر رمية حجر ويقول عند وصوله إلى مِنى:''',
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
                                  playFile('10hga2.ogg');
                                  setState(() {
                                    audio1 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
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
                                  """الحمد لله الذي بلغنيها سالماا معافى، اللهم هذه مِنى قد أتيتها وأنا عبدك، وفي قبضتك، أسألك أن تمن علي بما مننت به على أوليائك، اللهم  إني أعوذ بك من الحرمان والمصيبة في ديني، يا أرحم الراحمين.""",
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
                  '''وأعمال مِنى يوم النحر متعددة و هي:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """  رمي جمرة العقبة , الذبح , الحلق , طواف الإفاضة , السعي إذا لم يكن قد سعى من قبل.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' 1-رمي جمرة العقبة:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ يرمي الحاج سبع حصيات ويقول عند كل واحدة: """,
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
                                  playFile('10hga3.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio4 = false;
                                    audio5 = false;
                                  });
                                } else {
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
                                  """ بسم الله، والله أكبر, رغماا للشيطان وحزبه وإرضا اء للرحمن.""",
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
                  """ويقطع الحاج التلبية بأول الرمي.
وقت الرمي من فجر يوم النحر إلى فجر اليوم التالي ولكن السنة أن يكون الرمي ما بين طلوع الشمس إلى الزوال ويجوز الرمي بعد  الغروب إلى الفجر لكن مع الكراهة إل لعذر.
رمي الجمرة بحيث تضرب الحصية في عمود الجمرة أو تقع في الدائرة المحيطة به, ويكون الحاج واقفاا مستقبل الجمرة بحيث يجعل مِنى  عن يمينه وطرق مكة عن يساره, أما الرمي من فوق الجسر فمن أي جهة كانت.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' 2-ذبح الهدي:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """وهي واجبة على المتمتع والقارن فقط، وأصبح في مكة مؤسسات تقوم نيابة عن الحاج في شراء الهدي وذبحه وتوزيعه على الفقراء في  مختلف أنحاء العالم، فإن لم يجد لزمه الصوم ثلاثة أيام في الحج قبل يوم عرفة و سبعة إذا رجع إلى أهله.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' 3-الحلق أو التقصير:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """يجب حلق الشعر أو تقصيره قدر الأنملة 2 سم ويستحب الحلق بشكل كامل وبالموس والمرأة تقصر فقط قدر الأنملة.
 اعلم أخي الحاج أن الشعر هو بضاعة مخلوفة وعند حلق الشعر فبكل شعرة تأخذ حسنة وتذهب عنك سيئة وترتفع بها درجة.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' ويستحسن عند الحلق أن يقال:',
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
                                  playFile('10hga4.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio5 = false;
                                  });
                                } else {
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
                                  """الحمد لله على ما هدانا، الحمد لله على ما أنعم به علينا، اللهم هذه ناصيتي, فتقبل مني واغفر لي ذنوبي اللهم اغفر لي وللمحلقين  والمقصرين يا واسع المغفرة، آمين. """,
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
                  'وبعد الفراغ من الحلق أو التقصير يقول: ',
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
                                  playFile('10hga5.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                  });
                                } else {
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
                                  """الحمد لله الذي قضى عنا نسُكَُنا.""",
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
                  """فإذا فعل ذلك يتحلل الحاج التحلل الأصغر, ويحل له كل شيء حرم بالإحرام إل الجماع و دواعيه, فلا يحل له حتى يطوف طواف  الإفاضة.""",
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
