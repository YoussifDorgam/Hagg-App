import 'package:flutter/material.dart';
import 'package:hajjguide/MansekElHAjjScreens/12zo_elhijja_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/8zo_elhajja_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/elmasged_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/mansek_tawaf_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/saii_screen.dart';
import 'package:hajjguide/icons/my_app_icons_icons.dart';
import '../MansekElHAjjScreens/10zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/11zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/9zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/ahram_screen.dart';
import '../Combonants/constance.dart';
import '../MansekElHAjjScreens/el_neai_screen.dart';
import '../icons/my_flutter_app_icons.dart';

class ManasekElHAjj extends StatelessWidget {
  const ManasekElHAjj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('مناسك الحج',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const ElNeaScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'النيه',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.neya,
                          size: 35,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const AhramScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'الإحرام',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.ehram,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const ElMasgedScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'دخول المسجد الحرام',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.masged_haram ,
                          size: 35,
                          color: Colors.black,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const ManasekElHajjScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          ' الطواف',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.tawaf,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const SaiiScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'السعى',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.sa3y,
                          size: 40,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()
                {
                  navigatorTo(context, const EightZoElHijjaScreen());

                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'الثامن من ذو الحجه',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega8,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()
                {
                  navigatorTo(context, const NineZoElHijjaScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'التاسع من ذو الحجه',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega9,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()
                {
                  navigatorTo(context, const TenZoElHijjaScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'العاشر من ذو الحجه',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Icon(
                          MyAppIcons.zo_hega10,
                          size: 40,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()
                {
                  navigatorTo(context, const ElevenZoElHijjaScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'الحادى عشر من ذو الحجه',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega11,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: ()
                {
                  navigatorTo(context, const TwelveZoElHijjaScreen());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Spacer(),
                        Text(
                          'الثانى عشر من ذو الحجه',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega12,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildDrawerItem(IconData iconData, String title,
    {GestureTapCallback? ontab}) {
  return ListTile(
    onTap: ontab,
    leading: const Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
    trailing: Icon(
      iconData,
      size: 32,
      color: Colors.black,
    ),
    title: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 17.0),
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}
