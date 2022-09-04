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
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/my-image.jpeg'),
                    radius: 40,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Expanded(
                    child: Text(
                      'Youssef Dorgam',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          whatsapp(
                              "https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%2F%3Fphone%3D201027790713%26text%26app_absent%3D0%26fbclid%3DIwAR0B66FNvgVt3Y9kNDUkbVWLhy50BUo3rWQetC86WmH-HuS6YgTMofzJOaA&h=AT24d8sM0oSOxShMV9xha4CJ74JGOnpuNeGhG5wU-P6JTP_0u3FkKMa2fA1-I1inJUaVau90EAm2d11Sunvh-_wZjfgVHEjHFNuFtKUWdXV21aIHdEEMNFC_Ju_N2jDdfIR68A");
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            messenger("https://m.me/youssf.dorgam");
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.facebookMessenger,
                          ))
                    ],
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
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/my-image.jpeg'),
                    radius: 40,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Expanded(
                    child: Text(
                      'Ahmed ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          whatsapp(
                              "https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%2F%3Fphone%3D201027790713%26text%26app_absent%3D0%26fbclid%3DIwAR0B66FNvgVt3Y9kNDUkbVWLhy50BUo3rWQetC86WmH-HuS6YgTMofzJOaA&h=AT24d8sM0oSOxShMV9xha4CJ74JGOnpuNeGhG5wU-P6JTP_0u3FkKMa2fA1-I1inJUaVau90EAm2d11Sunvh-_wZjfgVHEjHFNuFtKUWdXV21aIHdEEMNFC_Ju_N2jDdfIR68A");
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            messenger("https://m.me/youssf.dorgam");
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.facebookMessenger,
                          ))
                    ],
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
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/my-image.jpeg'),
                    radius: 40,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Expanded(
                    child: Text(
                      'Youssef Dorgam',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          whatsapp(
                              "https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%2F%3Fphone%3D201027790713%26text%26app_absent%3D0%26fbclid%3DIwAR0B66FNvgVt3Y9kNDUkbVWLhy50BUo3rWQetC86WmH-HuS6YgTMofzJOaA&h=AT24d8sM0oSOxShMV9xha4CJ74JGOnpuNeGhG5wU-P6JTP_0u3FkKMa2fA1-I1inJUaVau90EAm2d11Sunvh-_wZjfgVHEjHFNuFtKUWdXV21aIHdEEMNFC_Ju_N2jDdfIR68A");
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            messenger("https://m.me/youssf.dorgam");
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.facebookMessenger,
                          ))
                    ],
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

void whatsapp(String Url) async {
  String url = Url;

  if (!await launch(url)) throw 'Could not launch $url';
}

void messenger(String Url) async {
  String url = Url;
  if (!await launch(url)) throw 'Could not launch $url';
}
