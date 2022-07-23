import 'package:flutter/material.dart';
import 'package:hajjguide/Combonants/constance.dart';
import 'package:hajjguide/Drawer&DrawerScreens/asnaaelhajj_screen.dart';
import 'package:hajjguide/Drawer&DrawerScreens/beforhag_screen.dart';
import 'package:hajjguide/Drawer&DrawerScreens/womenandhajj_screen.dart';
import 'inflwanzaelkhnazir_screen.dart';


class DalilElSiha extends StatelessWidget {
  const DalilElSiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('دليل صحتك',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: ()
                    {
                      navigatorTo(
                        context,
                        const AsnaaElHAjjScreen(),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor:  Color(0xffE9EFC9),
                      child: Center(
                        child: Text('اثناء الحج',
                          style: TextStyle(fontSize: 17,color: Colors.black,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: ()
                    {
                      navigatorTo(
                        context,
                        const BeforElHajj(),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor:  Color(0xffE9EFC9),
                      child: Center(
                        child: Text('قبل الحج',
                          style: TextStyle(fontSize: 17,color: Colors.black,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: ()
                    {
                      navigatorTo(
                        context,
                        const InflwanzaScreen(),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor:  Color(0xffE9EFC9),
                      child: Center(
                        child: Text(' انفلونزا الخنازير',
                          style: TextStyle(fontSize: 17,color: Colors.black,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: ()
                    {
                      navigatorTo(
                        context,
                        const WomanAndHajjScreen(),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor:  Color(0xffE9EFC9),
                      child: Center(
                        child: Text(' المرأه والحج',
                          style: TextStyle(fontSize: 17,color: Colors.black,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
