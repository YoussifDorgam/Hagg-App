import 'package:flutter/material.dart';

class TawafElWadaaScreen extends StatelessWidget {
  const TawafElWadaaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'طواف الوداع',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/test.jpg'),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '''الأخطاء الشائعة في طواف الوداع ''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	الإقامة بمكة بعد طواف الوداع، فلا يكون آخر عهدهم الطواف بالبيت.
2-	الخروج من مكة قبل طواف الوداع، وطواف الوداع من واجبات الحج.
3-	سعي بعض الحجاج بعد طواف الوداع، اعتقادا منهم أن طواف الوداع يتطلب سعيا، والصحيح أن الوداع  ليس فيه سعي. 
4-	نزول بعض الحجاج من منى قبل رمي الجمرات ليطوفوا للوداع ، ثم يرجعوا إلى منى فيرموا الجمرات  ثم يسافروا، وهذا لايجوز لأنه مخالف لأمر النبي صلى الله عليه وسلم أن يكون آخر عهد الحاج بالبيت. 
""",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
