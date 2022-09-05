

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hajjguide/Drawer&DrawerScreens/adaii_scren.dart';
import 'package:hajjguide/Drawer&DrawerScreens/aftowny_screen.dart';
import 'package:hajjguide/Drawer&DrawerScreens/seha_screen.dart';
import 'package:hajjguide/Drawer&DrawerScreens/tawareqphone_screen.dart';
import 'package:hajjguide/Drawer&DrawerScreens/tawasol_scren.dart';
import 'package:hajjguide/Screens/MapData/googlemap_screen.dart';
import 'package:hajjguide/Screens/mnaskelhajj_screen.dart';
import 'package:hajjguide/Screens/tawaf_screen.dart';
import 'package:hajjguide/icons/my_app_icons_icons.dart';
import '../../Combonants/constance.dart';
import '../../Screens/ahkamelhajj_screen.dart';
import '../../Screens/est3dad_screen.dart';
import '../../Screens/note_screen.dart';
import '../contactus.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,

      child: Container(
        color: const Color(0xffE9EFC9),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center ,
                children: const [
                  CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('assets/images/appicon.jpeg'),
                      radius: 42.0,
                    //  backgroundImage:
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Personal Hajj E-guide' ,
                    style: TextStyle(color: Colors.black),),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            buildDrawerItem(Icons.home_outlined, 'الرئيسيه',
                ontab: () => Navigator.pop(context)),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(MyAppIcons.hajj_ready, 'الاستعداد الحج',
                ontab: () => navigatorTo(
                      context,
                      const Est3daScreen(),
                    )),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.manask,
              'مناسك للحج',
              ontab: () => navigatorTo(
                context,
                const ManasekElHAjj(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.ahkam,
              'احكام الحج',
              ontab: () => navigatorTo(
                context,
                const AhkamElHajjScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.doa3,
              'الادعيه',
              ontab: () => navigatorTo(
                context,
                const AdaiiScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.motawaf,
              'المطوف',
              ontab: () => navigatorTo(
                context,
                const TawafScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.map,
              'الخرائط',
              ontab: () => navigatorTo(
                context,
                MapScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.health,
              'الصحه',
              ontab: () => navigatorTo(
                context,
                const SehaScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.aftony,
              'افتونى',
              ontab: () => navigatorTo(
                context,
                const AftownyScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.contact,
              'تواصل',
              ontab: () => navigatorTo(
                context,
                const TawasolScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.note,
              'المفكره',
              ontab: () => navigatorTo(
                context,
                NoteScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              MyAppIcons.emergency,
              'ارقام الطوارئ',
              ontab: () => navigatorTo(
                context,
                const PhonesScreen(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Divider(
                color: Colors.black,
              ),
            ),
            buildDrawerItem(
              Icons.info_outline,
              'حول البرنامج',
              ontab: () => navigatorTo(
                context,
                const ContactUs(),
              ),
            ),
          ],
        ),
      ),
    );
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
}
