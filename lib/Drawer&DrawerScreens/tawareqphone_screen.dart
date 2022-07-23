import 'package:flutter/material.dart';
import 'package:hajjguide/Drawer&DrawerScreens/hospitals_screen.dart';
import 'package:hajjguide/icons/my_app_icons_icons.dart';

class PhonesScreen extends StatelessWidget {
  const PhonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        centerTitle: true,
        title: const Text('ارقام الطوارئ',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Calls('tel:977');
                    },
                    child: const Text('اتصل'),
                  ),
                  const Spacer(),
                  const Text(
                    'رقم الإسعاف  ',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    MyAppIcons.ambulance,
                    size: 30,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Calls('tel:999');
                    },
                    child: const Text('اتصل'),
                  ),
                  const Spacer(),
                  const Text(
                    'رقم الشرطه',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    MyAppIcons.police,
                    size: 30,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Calls('tel:998');
                    },
                    child: const Text('اتصل'),
                  ),
                  const Spacer(),
                  const Text(
                    'رقم الدفاع المدني ',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    MyAppIcons.protection,
                    size: 30,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Calls('tel:996');
                    },
                    child: const Text('اتصل'),
                  ),
                  const Spacer(),
                  const Text(
                    'رقم امن الطريق',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    MyAppIcons.scurity_road,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
