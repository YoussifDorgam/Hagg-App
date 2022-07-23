import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('المستشفيات',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مركز مكه الطبى',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5222222'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5206049'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Spacer(),
                          Text('مكه المكرمه'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 522 2222');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى الملك عبدالعزيز',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5442400'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5424449'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('272'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'حى الزاهر',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 544 2400');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى السلام',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5772222'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5770001'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'مكه المكرمه',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 577 2222');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى الاهلى السعودى',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5562177'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5562042'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'العزيزيه',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 556 2177');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى الحراء العام',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5203535'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('520033'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('261'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'المدينه الصناعيه',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 520 3535');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى الشفاء',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5369779'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5379175'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'شارع منصور',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 536 9779');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ExpansionTile(
              title: const Text(''),
              leading: const Icon(Icons.arrow_drop_down),
              trailing: const Text(
                'مستشفى أجياد العام',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هاتف',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5730070'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'فاكس',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('5743116'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'الاسره',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text('131'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'العنوان',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          Text(
                            'أجياد بجوار المسجد الحرام',
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Calls('tel:00 966 12 573 0070');
                        },
                        child: const Text('اتصل'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void Calls(String urlPhone) async {
  String url = urlPhone;
  if (!await launch(url)) throw 'Could not launch $url';
}
