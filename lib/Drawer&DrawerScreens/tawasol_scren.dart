
import 'package:flutter/material.dart';
import 'package:hajjguide/Drawer&DrawerScreens/hospitals_screen.dart';



class TawasolScreen extends StatelessWidget {
  const TawasolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text('تواصل ',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:
            [
              const Text('''خدمة تقدمها وزارة الحج السعودية , و تهتم الى أستقبال الإتصالات بشكل مجاني من حجاج بيت الله الحرام والزوار من داخل السعودية و خارجها لتلقى استفساراتهم و شكاواهم و ملاحظاتهم.''',
                textDirection: TextDirection.rtl,),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Calls('tel:8004304444');
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
