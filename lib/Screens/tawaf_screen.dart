import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TawafScreen extends StatefulWidget {
  const TawafScreen({Key? key}) : super(key: key);

  @override
  State<TawafScreen> createState() => _TawafScreenState();
}

class _TawafScreenState extends State<TawafScreen> {
  int tawafCounter = 0;
  int saiCounter = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: const Text(
              'مساعد الطواف والسعى',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: const Color(0xffE9EFC9),),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.teal,
                          width: 1,
                        )),
                    child: const Align(
                      child: Tab(
                        text: 'الطواف',

                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.teal,
                          width: 1,
                        )),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Tab(
                        text: 'السعى',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10 ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/tawaf3.jpeg'),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: buildTawafCounterItem()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),

                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sa3y.jpeg'),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: buildSaiCounterItem()),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildTawafCounterItem() => Padding(
    padding: const EdgeInsets.only(left: 10 ,right: 10),
    child: Container(
      width: double.infinity,
      decoration:  const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),

        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (tawafCounter > 0) tawafCounter--;
                });
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xffE9EFC9),
                child: Icon(
                  Icons.remove,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (tawafCounter < 7) tawafCounter++;
                    if (tawafCounter == 7) {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.SCALE,
                        title: 'لقد اتممت الطواف بنجاح',
                        //desc: "Your order was cancelled successfully!",
                        btnOkOnPress: () {},
                      ).show().then((value) {
                        setState(() {
                          tawafCounter = 0 ;
                        });
                      });
                    }
                  });
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.amber,
                  child: Text(
                    '$tawafCounter',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (tawafCounter < 7) tawafCounter++;
                  if (tawafCounter == 7) {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.SUCCES,
                      animType: AnimType.SCALE,
                      title: 'لقد اتممت الطواف بنجاح',
                      //desc: "Your order was cancelled successfully!",
                      btnOkOnPress: () {},
                    ).show().then((value)
                        {
                          setState(() {
                            tawafCounter = 0 ;
                          });
                        }
                    );
                  }
                });
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor:Color(0xffE9EFC9),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget buildSaiCounterItem() => Padding(
    padding: const EdgeInsets.only(left: 10 ,right: 10),
    child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50) ,
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),

        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (saiCounter > 0) saiCounter--;
                });
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor:Color(0xffE9EFC9),
                child: Icon(
                  Icons.remove,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (saiCounter < 7) saiCounter++;
                    if (saiCounter == 7) {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.SCALE,
                        title: 'لقد اتممت السعى بنجاح',
                        //desc: "Your order was cancelled successfully!",
                        btnOkOnPress: () {},
                      ).show().then((value) {
                        setState(() {
                          saiCounter = 0 ;
                        });
                      });
                    }
                  });
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.amber,
                  child: Text(
                    '$saiCounter',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (saiCounter < 7) saiCounter++;
                  if (saiCounter == 7) {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.SUCCES,
                      animType: AnimType.SCALE,
                      title: 'لقد اتممت السعى بنجاح',
                      btnOkOnPress: () {},
                    ).show().then((value) {
                      setState(() {
                        saiCounter = 0 ;
                      });
                    });
                  }
                });
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xffE9EFC9),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
