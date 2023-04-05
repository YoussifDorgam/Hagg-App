import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'حول البرنامج',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''بسم الله ، والحمد لله ، ونصلي على رسول الله
تـم بحمـد الله  والذي بنـعمتـه تتـم الصالحـات  إطلاق هذا البرنامج "دليل الحج الشخصى" ، حَرِصنا من خلاله على أن نكون صدى لمقترحاتكم وتوجيهاتكـم .
لقد كان المشروع ثمرة جهد مبارك تجلّيتم فيه بالنصائح الصـادقة والتوجيـهات الفائقة ، تشاركـنا جميـعـاً  بـكـم ومــعـكـم  بـصـيـاغـة هـذا الــمــشــروع.''',
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'This App Created by :',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/first.jpg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Ahmed Basioney',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/secound.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Mohamed salah',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/theard.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Ahmed Aiman',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fource.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Ebrahim Elshawish',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fif5.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Ahmed Emad',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/se6.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Moaz khaled',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/se7.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Abdelrahman Ramdan',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}

// void whatsapp(String Url) async {
//   String url = Url;
//
//   if (!await launch(url)) throw 'Could not launch $url';
// }
//
// void messenger(String Url) async {
//   String url = Url;
//   if (!await launch(url)) throw 'Could not launch $url';
// }
