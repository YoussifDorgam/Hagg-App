import 'package:flutter/material.dart';
import 'package:hajjguide/Drawer&DrawerScreens/hospitals_screen.dart';
import '../Combonants/constance.dart';
import 'dalilelsaha_screen.dart';



class SehaScreen extends StatelessWidget {
  const SehaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('الصحه',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              InkWell(
                onTap: () {
                  navigatorTo(
                    context,
                    const DalilElSiha(),
                  );
                },
                child: const CircleAvatar(
                  radius: 100,

                  backgroundColor: Color(0xffE9EFC9),
                  child: Text(
                    'الدليل الصحى',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  navigatorTo(
                    context,
                    const HospitalScreen(),
                  );
                },
                child: const CircleAvatar(
                  radius: 100,
                  backgroundColor:Color(0xffE9EFC9),
                  child: Text(
                    'المستشفيات',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
