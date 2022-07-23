import 'package:flutter/material.dart';
import 'package:hajjguide/MansekElHAjjScreens/12zo_elhijja_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/8zo_elhajja_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/elmasged_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/mansek_tawaf_screen.dart';
import 'package:hajjguide/MansekElHAjjScreens/saii_screen.dart';
import 'package:hajjguide/icons/my_app_icons_icons.dart';
import '../AhkamElHajj/10zoelhijja_screen.dart';
import '../AhkamElHajj/8zoelhijja_screen.dart';
import '../AhkamElHajj/9zoelhijja_screen.dart';
import '../AhkamElHajj/befor8zoelhajj_screen.dart';
import '../AhkamElHajj/tashriq_screen.dart';
import '../AhkamElHajj/tawafelwadaa_screen.dart';
import '../MansekElHAjjScreens/10zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/11zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/9zo_elhijja_screen.dart';
import '../MansekElHAjjScreens/ahram_screen.dart';
import '../Combonants/constance.dart';
import '../MansekElHAjjScreens/el_neai_screen.dart';
import '../icons/my_flutter_app_icons.dart';

class AhkamElHajjScreen extends StatelessWidget {
  const AhkamElHajjScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('أحكام الحج',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const AhkamBeforEightZOElHijja());
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
                          ' أحكام قبل 8 ذي الحجه ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega8,
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
                  navigatorTo(context, const AhkamEightZOElHijja());
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
                    child: Expanded(
                      child: Row(
                        children: const [
                          Icon(Icons.arrow_back_ios),
                          Expanded(
                            child: Text(
                              'أحكام اليوم الثامن من ذي الحجه ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                            ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  navigatorTo(context, const AhkamNineZOElHijja());
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
                        Expanded(
                          child: Text(
                            'أحكام اليوم التاسع من ذي الحجه ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
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
                onTap: () {
                  navigatorTo(context, const AhkamTenZOElHijja());
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
                        Expanded(
                          child: Text(
                            ' أحكام اليوم العاشر من ذي الحجه ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyAppIcons.zo_hega10,
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
                  navigatorTo(context, const AhkamTashriqZOElHijja());
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
                          'اعمال ايام التشريق',
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
                onTap: () {
                  navigatorTo(context, const TawafElWadaaScreen());
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
                          'طواف الوداع ',
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
