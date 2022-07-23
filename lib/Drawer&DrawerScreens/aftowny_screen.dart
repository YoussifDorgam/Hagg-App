import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hajjguide/Drawer&DrawerScreens/hospitals_screen.dart';




class AftownyScreen extends StatelessWidget {
  const AftownyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text('أفتونى',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:
             [
              const Text('''خدمه افتوني خدمة تقدمها الامانة العامة للتوعية ألإسلامية في الحج بضيوفها ويشرف عليها نخبة من اصحاب الفضيلة العلماء حيث يتم الإجابة على اسئلة جميع الحجاج .''',
              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),
              textDirection: TextDirection.rtl,),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Calls('tel:8002451000');
                },
                child: const Text('اتصل'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
