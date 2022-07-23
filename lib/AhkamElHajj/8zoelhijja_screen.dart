import 'package:flutter/material.dart';

class AhkamEightZOElHijja extends StatelessWidget {
  const AhkamEightZOElHijja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text(
          'أحكام اليوم الثامن من ذي الحجه',
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
                  '''الاخطاء الشائعة في التوجه إلى منى''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  """1-	التفريط في السؤال عن حدود منى، والمبيت خارجها 
2-	تساهل البعض في المبيت خارج منى
3-	جمع الصلوات في منى، وهذا مخالف للسنة، فإن النبي - صلى الله عليه وسلم- كان يصلي كل صلاة في  وقتها في منى، قصراً من غير جمع.
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
