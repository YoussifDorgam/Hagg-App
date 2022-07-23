import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/Combonants.dart';

class AhramScreen extends StatefulWidget {
  const AhramScreen({Key? key}) : super(key: key);

  @override
  State<AhramScreen> createState() => _AhramScreenState();
}

class _AhramScreenState extends State<AhramScreen> {
  bool firstMusicPlay =
      false; // this variable to toggle between play music or stop music
  bool secoundMusicPlay =
      false; // this variable to toggle between play music or stop music

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player?.stop();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'الإحرام',
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
                  'الإحرام هو نية وتلبية و يكون من الميقات أو قبله بقليل زيادة في الاطمئنان',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text(
                  ' فإذا أراد الحاج أن يحرم يستحب له أن :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ 1-يقص شعره أو يحلقه على حسب عادته من قبل
 2-يقص أظفاره ويزيل عانته
 3-يغتسل ويتوضأ
 4-يلبس إزاراً ورداءً أبيضين طاهرين والجديدان أفضل
 5-يتطيب ثم يصلي ركعتين في غير وقت الكراهة
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' ثم ينوي العمرة بالقلب ولا بأس أن يقول بلسانه:',
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
                                  firstMusicPlay = !firstMusicPlay;
                                });
                                if (firstMusicPlay == true) {
                                  playFile('a7ram1.mp3');
                                  setState(() {
                                    secoundMusicPlay = false;
                                  });
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((firstMusicPlay == false)
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
                                  """اللهم إني أريد العمرة فيسرها لي و تقبلها مني، نويت العمرة و أحرمت بها لله تعالى فإن حبسني حابس فمحلي حيث حبستني""",
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
                  ' ثم يلبي الحاج بأن يقول:',
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
                                  secoundMusicPlay = !secoundMusicPlay;
                                });
                                if (secoundMusicPlay == true) {
                                  firstMusicPlay = false;
                                  playFile('a7ram2.mp3');
                                } else {
                                  stopFile();
                                }
                              },
                              icon: Icon((secoundMusicPlay == false)
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
                                  """لبيك اللهم لبيك، لبيك لا شريك لك لبيك، إن الحمد والنعمة لك والملك، لا شريك لك""",
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
                  """ويكررها ثلاث مرات، ويختم بالصلاة على سيدنا محمد صلى الله عليه وسلم, يكرر الحاج التلبية كلما صعد شرفاً أو هبط وادياً أو ركب  سيارة أو نزل منها و عند لقاء الأصدقاء و المعارف و أدبار الصلوات.
 الدعاء : الدعاء إلى الله سبحانه وتعالى أي الدعاء باللغة العربية أو باللغة الخاصة بك
 محظورات الإحرام بعد النية والتلبية.
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  'هناك بعض من الأمور المحرم يجب أن لا تفعل:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ 1-الرفث: وهو الجماع ودواعيه مما يكون بين الرجل وامرأته من التقبيل والمداعبة ونحوهما
 2-الفسوق: وهو الخروج عن الطاعة
 3-الجدال: أن يجادل رفيقه أو أياً كان حتى يغضبه و كذلك المنازعة والسباب
 4-لبس الملابس المخيطة للرجل
 5-قص الشعر
 6-الطيب أي وضع أي شيء ذي رائحة عطرة
 7-قص الأظافر
 8-تغطية الرأس للرجل
 9-الصيد
 10-قطع الشجر
 11-لبس الجوارب و الحذاء العادي ولكن يجوز لبس أي حذاء يظهر فيه مشط القدم
 12-تغطية الوجه والقدمين أثناء النوم
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  ' مباحات الإحرام:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                const Text(
                  """ 1-الاغتسال بقصد الطهارة أو النظافة  أو للتبرد لكن بدون استعمال ما فيه طيب كالصابون المعطر أو حتى معجون الأسنان المعطر
 2--قلع الضرس
 3-تجبير الكسر
 4-حك الرأس أو الجسم، ولكن برفق حتى لا يسقط شيء من شعره فإذا سقط شيء فعليه صدقة
 5-يجوز لبس النعلين والخاتم والنظارة وسماعة الأذن وساعة اليد والحزام والمحفظة التي يحفظ بها المال والأوراق
 6-يجوز تغيير ثياب الإحرام وتنظيفها، ولكن يكره تنزيه اً
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
