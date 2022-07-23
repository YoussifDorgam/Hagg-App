import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AdaiiScreen extends StatelessWidget {
  const AdaiiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'الأدعيه',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: const Color(0xffE9EFC9),),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.teal,
                          width: 1,
                        )),
                    child: const Align(
                      child: Tab(
                        text: 'ادعيه من القرأن',
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.teal,
                          width: 1,
                        )),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Tab(
                        text: 'ادعيه من السنه',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:
            [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا لا تؤاخذنا إن نسينا أو أخطأنا ربنا ولا تحمل علينا إصرا كما حملته على الذين من قبلنا ربنا ولا تحملنا ما لا طاقة لنا به واعف عنا  واغفر لنا وارحمنا أنت مولانا فانصرنا على القوم الكافرين. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا لا تزغ قلوبنا بعد إذ هديتنا وهب لنا من لدنك رحمة إنك أنت الوهاب. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا إننا أمنا فاغفر لنا ذنوبنا وقنا عذاب النار. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا اغفر لنا ذنوبنا وإسرافنا في أمرنا وثبت أقدامنا وانصرنا على القوم الكافرين. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا ظلمنا أنفسنا وإن لم تغفر لنا وترحمنا لنكونن من الخاسرين. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب أوزعني أن أشكر نعمتك التي أنعمت علي وعلى والدي وأن أعمل صالحا ترضاه وأصلح لي في ذريتي إني تبت إليك واني من  المسلمين.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا اغفر لي ولوالدي وللمؤمنين يوم يقوم الحساب ربنا هب لنا من أزواجنا وذرياتنا قرة أعين واجعلنا للمتقين إماما.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب هب لي من لدنك ذرية طيبة إنك سميع الدعاء. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text(""" رب اجعلني مقيم الصلاة ومن ذريتي ربنا وتقبل دعاء.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا اغفر لي ولوالدي وللمؤمنين يوم يقوم الحساب.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب اشرح لي صدري ويسر لي أمري.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب زدني علما.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب أنزلني منزلا مباركا وأنت خير المنزلين.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب أعوذ بك من همزات الشياطين ، وأعوذ بك رب أن يحضرون.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب إني ظلمت نفسي فاغفر لي. """,
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""ربنا ظلمنا أنفسنا وإن لم تغفر لنا وترحمنا لنكونن من الخاسرين.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم رب جبريل وميكائيل وإسرافيل ، فاطر السموات واألرض ، عالم الغيب وال شهادة ، أنت تحكم بين عبادك فيما كانوا فيه يختلفون ،اهدني لما اختلف فيه من الحق بإذنك ، إنك تهدي من تشاء إلى صراط مستقيم .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم ! انفعني بما علمتني ، وعلمني ما ينفعني ، وارزقني علما تنفعني به .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم جنبني منكرات الأخلاق والأعمال والأهواء والأدواء .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""يا مقلب القلوب ثبت قلبي على دينك .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم مصرف القلوب صرف قلوبنا على طاعتك .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم استر عورتي ، و أمن روعتي و اقض عني ديني .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب اغفر لي وثب علي ، إنك أنت الثواب الرحيم .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم إني أسألك من الخير كله عاجله وأجله ، ما علمت منه وما لم أعلم ، وأعوذ بك من الشر كله عاجله وآجله ، ما علمت منه وما لم أعلم ، اللهم إني أسألك من خير ما سألك ب عبدك ونبيك ، وأعوذ بك من شر ما عاذ به عبدك ونبيك ،، اللهم إني أسألك الجنة و ما قرب إليها من قول أو عمل ، وأعوذ بك من النار وما قرب إليها من قول أوعمل ، وأسألك أن تجعل كل قضاء قضيته لي خيرا .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم إني أعوذ بك من فتنة الثار ، وعذاب النار ، وفتنة القبر ، وعذاب القبر ومن شر فتنة الغني ، ومن شر فتنة الفقر ، ومن شر المسيح الدجال ، اللهم اغسل خطاياي بماء الثلج والبرد ، وأنق قلبي من الخطايا كما أنقيت الثوب الأبيض من الدنس ، وباعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب ، اللهم إني أعوذ بك من الكسل والهرم والمأثم والمغرم .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم إني أعوذ بك من العجز ، والكسل ، والجبن ، والبخل ، والهرم ، وعذاب القبر اللهم آت نفسي تقواها ، وزكها أنت خير من زكاها ، أنت وليها وموالها ، اللهم إني أعوذ بك من علم لا ينفع ، ومن قلب لا يخشع ، ومن نفس لا تشبع ، ومن دعوة لا يستجاب لها.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب اغفر لي خطيئتي وجهلي ، وإسرافي في أمري كله ، وما أنت أعلم به مني ، اللهم اغفر لي خطاياي ، وعمدي وجهلي وهزلي ، وكل ذلك عندي ، اللهم اغفر لي ما قدمت وما أخرت ، وما أسررت وما أعلنت ، أنت المقدم وأنت المؤخر ، وأنت على كل شيء قدير .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""رب أعني ولا تعن علي ، وانصرني ولا تنصر علي ، وامكر لي ولا تمكر علي ، واهدني ويسر لي الهدى ، وانصرني على من بغى علي ، رب اجعلني لك شكارا ، لك ذكارا ، لك رهابا ، لك مطواعا ، لك مخبثا ، إليك أواها منيبا ، رب تقبل توبتي ، واغسل حوبتي ، وأجب دعوتي ، وثبت حجتي ، وسدد لساني ، واهد قلبي ، واسلل سخيمة صدري .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم إني أسألك بأن لك الحمد الله إله إلله أنت ، وحدك لا شريك لك ، المنان ، يا بديع السماوات والأرض ، يا ذا الجالل ولإلكرام ، يا حي يا قيوم ، إني أسألك الجنة ، وأعوذ بك من النار .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم إني أسألك يا الله الأحد الصمد ، الذي لم يلد ولم يولد ولم يكن له كفوا أحد ، أن تغفر لي ذنوبي ؛ إنك أنت الغفور الرحيم .""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
                      child: Container(
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
                          padding: EdgeInsets.all(15.0),
                          child: Text("""اللهم صلى على محمد وعلى آل محمد كما صليت على آل إبراهيم إنك حميد مجيد اللهم بارك على محمد وعلى آل محمد كما باركت على آل إبراهيم إنك حميد مجيد.""",
                            textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),

                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
