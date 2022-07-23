import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class ManasekElHajjScreen extends StatefulWidget {
  const ManasekElHajjScreen({Key? key}) : super(key: key);

  @override
  State<ManasekElHajjScreen> createState() => _ManasekElHajjScreenState();
}

class _ManasekElHajjScreenState extends State<ManasekElHajjScreen> {
  bool audio1 =
      false; // this variable to toggle between play music or stop music
  bool audio2 = false;
  bool audio3 =
      false; // this variable to toggle between play music or stop music
  bool audio4 = false;
  bool audio5 =
      false; // this variable to toggle between play music or stop music
  bool audio6 = false;
  bool audio7 = false;
  bool audio8 = false;

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
          ' الطواف',
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
                  """ يستحب في بداية الطواف أن يستقبل الكعبة بحيث يكون الحجر الأسود عن يمينه ثم ينتقل ليستقبل الحجر و ينوي الطواف.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' يبدأ من خط المرمر البني ويقول:
''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
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
                                  playFile('tawaf1.mp3');
                                  setState(() {
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio7 = false;
                                    audio8 = false;
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
                                  """ بسم الله والله أكبر اللهم إيماناا بك وتصديقاا بكتابك ووفاء بعهدك وإتباعاا لسنة نبيك.""",
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
                  ''' يستلم الحجر ويقبله إن أمكن ذلك إذا تعذر تقبيله يلمسه بيده اليمنى ويقبل يده.
 إذا تعذر ذلك يقف بمواجهة الحجر الأسود ويشير إليه بيديه مرة واحدة فقط ويقول بسم الله والله أكبر ثم يبدأ الطواف.
 كيفية الإشارة,أن يرفع يديه بمحاذاة منكبيه ويجعل باطنهما نحو الحجر الأسود ويشير بهما مرة واحدة فقط.
 والطواف عبارة عن سبعة أشواط  ويسن الرمل في الأشواط الثلاثة الأولى والضطباع في كل الأشواط لكل طواف وراءه سعي.
 الرمل والضطباع للرجل فقط، وذلك في الطواف الذي بعده سعي فقط. فإذا انتهى من الطواف غطى كتفيه.
''',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' يقول عند باب الكعبة:''',
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
                                  playFile('tawaf2.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio7 = false;
                                    audio8 = false;
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
                                  """ اللهم إن البيت بيتك، والحرم حرمك، والأمن أمنك، وهذا مقام العائذ بك.""",
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
                  ' يقول عند الركن العراقي:',
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
                                  playFile('tawaf3.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio7 = false;
                                    audio8 = false;
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
                                  """ اللهم إني أعوذ بك من الشك و الشرك والشقاق والنفاق وسوء الأخلاق وسوء المنظر في المال والأهل والولد.""",
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
                  """ يقول بين الركن الشامي واليماني:""",
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
                                  playFile('tawaf4.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio7 = false;
                                    audio8 = false;
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
                                  """ اللهم اجعله حجاا مبروراا وسعياا مشكوراا وذنباا مغفوراا وعملاا مقبولا وتجارة لن تبور يا عزيز يا غفور.""",
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
                  """ويستحب أن يستلم الركن اليماني كلما مر عليه في الطواف وذلك بأن يمس الركن بكفيه أو بيمينه وإذا عجز عن ذلك تنوب الإشارة إليه ، ويستحب الدعاء عند الركن اليماني فإنه مستجاب، حيث هناك سبعون ألف ملك يقولون آمين.
 لكي يصح الطواف يجب الوقوف تماماا عن المشي عند استلام الركن اليماني.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' يقول بين الركن اليماني والحجر الأسود:',
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
                                  playFile('tawaf5.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio6 = false;
                                    audio7 = false;
                                    audio8 = false;
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
                                  """(رَبنَّاَ ءَاتنِاَ فيِ الدُّنْياَ حَسَنَةا وَفيِ الْْخِرَةِ حَسَنَةا وَقنِاَ عَذاَبَ الناَّر)ِ 
 اللهم إني أعوذ بك من الكفر والفاقة ومواقف الخزي في الدنيا والْخرة.
""",
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
                  ' ويكثر في الأشواط الثلاثة من قوله:',
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
                                  playFile('tawaf6.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio7 = false;
                                    audio8 = false;
                                  });
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
                                  """اللهم اجعله حجاا مبروراا وذنباا مغفوراا وسعياا مشكورا.""",
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
                  ' يقول في الأربعة الباقية:',
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
                                  audio7 = !audio7;
                                });
                                if (audio7 == true) {
                                  playFile('tawaf7.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio8 = false;
                                  });
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((audio7 == false)
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
                                  """ اللهم اغفر وارحم واعف وتكرم، وتجاوز عما تعلم, إنك أنت الأعز الأكرم.""",
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
                  """ويكثر من الدعاء بما فيه خير الدنيا و الْخرة.
 في ختام الطواف يستلم الحجر أو يشير إليه بكفيه وفي كل مرة يمر من أمامه أثناء الطواف.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  'ركعتا الطواف:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """بعد النتهاء من الطواف يصلي ركعتي الطواف خلف مقام سيدنا إبراهيم عليه السلام ولو في آخر الحرم أو في أي مكان في الحرم جائز  في حال الزحام.
 يقرأ في الأولى قل يا أيها الكافرون.... وفي الثانية قل هو الله آحد....بعد الفاتحة.
 يقول الله تعالى: واتخذوا من مقام إبراهيم مُصَلىَّ
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' يدعو بعد الصلاة:',
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
                                  audio8 = !audio8;
                                });
                                if (audio8 == true) {
                                  playFile('tawaf8.mp3');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
                                    audio3 = false;
                                    audio4 = false;
                                    audio5 = false;
                                    audio6 = false;
                                    audio7 = false;
                                  });
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((audio8 == false)
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
                                  """اللهم إنك دعوت عبادك إلى بيتك, وقد جئت طالباا رحمتك, ومبتغياا رضوانك, وأنت مننت علي بذلك, فاغفر لي, إنك على كل شيء قدير.""",
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
                  """ و عن( النبي صلى الله عليه وسلم ), الطواف بالبيت صلاة، إل أن الله أباح فيه المنطق فمن نطق فلا ينطق إل بخير.
 وعليه يشترط في الطواف الطهارة من الحدث الأكبر والأصغر وستر العورة .
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
