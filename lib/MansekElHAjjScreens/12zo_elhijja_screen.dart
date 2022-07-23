import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class TwelveZoElHijjaScreen extends StatefulWidget {
  const TwelveZoElHijjaScreen({Key? key}) : super(key: key);

  @override
  State<TwelveZoElHijjaScreen> createState() => _TwelveZoElHijjaScreenState();
}

class _TwelveZoElHijjaScreenState extends State<TwelveZoElHijjaScreen> {
  bool audio1 = false; // this variable to toggle between play music or stop music
  bool audio2 = false;
  bool audio3 = false;


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
          'الثاني عشر من ذو الحجه',
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
                  ''' ثاني أيام التشريق ، ثالث أيام النحر:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """يجب على الحاج رمي الجمرات الثلاثة أيضاا كما رمى في اليوم الذي قبله على نفس الترتيب والكيفية و الوقت. ثم ينفر الحجاج  المتعجلون إلى مكة.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  '''ثالث أيام التشريق، رابع أيام النحر:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """إذا كان الحاج متأخراا في مِنى إلى ما بعد غروب شمس ثالث أيام النحر، فيجب أن يرمي الجمرات الثلاث في اليوم الرابع. ووقت الرمي  هو من طلوع الشمس إلى غروبها, ثم ينفر الحجاج إلى مكة.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' طواف الوداع:''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """إذا أراد الحاج السفر فيطوف بالبيت بلا رَمَل ول اضطباع ول سعي, ويسمى الطواف هذا بطواف الوداع, وهو واجب, ثم يصلي ركعتي الطواف, ويأتي زمزم ويشرب من مائها مستقبل الكعبة, ويتضلع بشربه ما استطاع, ثم يأتي الملتزم, ويتضرع إلى الله تعالى بما يحب من  أمر الدنيا والْخرة، ويبدأ الدعاء بالحمد والثناء والصلاة على النبي صلى الله عليه وسلم ويختمه بذلك.""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ''' ويقول في الدعاء:''',
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
                                  playFile('12hga1.mp3');
                                  setState(() {
                                    audio2 = false;
                                    audio3 = false;
                                  });
                                } else {

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
                                  """اللهم البيت بيتك والعبد عبدك وابن عبدك وابن أمتك, حملتني على ما سخرت لي من خلقك, وبلغتني بنعمتك حتى أعنتني على قضاء مناسكك, فإن كنت رضيت عني فزدني منك رضا, وإل فمَُنَّ علي بالقبول و الرضا من محض فضلك يا ذا الفضل العظيم ها أنا منصرف  بإذنك غير مستبدل بك ول بيتك, ول راغب عنك ول عن بيتك.""",
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
                                  playFile('12hga2.ogg');
                                  setState(() {
                                    audio1 = false;
                                    audio3 = false;
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
                                  """اللهم فأصحبني العافية في بدني والعصمة في ديني, وأحسن منقلبي, وارزقني طاعتك ما أبقيتني, واجمع لي خيري الْخرة والدنيا إنك  على كل شيء قدير.""",
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
                                  playFile('12hga3.ogg');
                                  setState(() {
                                    audio1 = false;
                                    audio2 = false;
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
                                  """اللهم ارزقني العود بعد العود, المرة بعد المرة إلى بيتك الحرام, واجعلني من المقبولين عندك يا ذا الجلال والإكرام, اللهم لا تجعله آخر العهد من بيتك الحرام يا أرحم الراحمين.""",
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
                  """ثم يستلم الحجر الأسود ويقبله أو يشير إليه في حال تعذر ذلك ويمشي خارجاا من الحرم ووجهه تلقاء الباب, ول يمشي القهقرى إلى ظهره, ويلتفت مراراا إلى الكعبة متحسراا على مفارقتها, وا ملاا في العودة مرة أخرى إلى زيارة البيت العتيق, حيث الرحمة والمغفرة  والرضوان من الله تعالى.""",
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
