import 'dart:ui';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hajjguide/Combonants/constance.dart';
import 'package:hajjguide/Screens/est3dad_screen.dart';
import 'package:hajjguide/Screens/mnaskelhajj_screen.dart';
import 'package:hajjguide/Screens/tawaf_screen.dart';
import 'package:hajjguide/cubit/app_status.dart';
import 'package:hajjguide/cubit/bloc.dart';
import 'package:hajjguide/icons/my_flutter_app_icons.dart';
import 'package:hajjguide/model/data.dart';
import 'package:hajjguide/model/product_model.dart';
import '../Drawer&DrawerScreens/DrawerLayoute/drawer_screen.dart';
import 'ahkamelhajj_screen.dart';
import 'MapData/googlemap_screen.dart';
import 'package:http/http.dart' as http;

class HomeLayoute extends StatefulWidget {
  const HomeLayoute({Key? key}) : super(key: key);

  @override
  State<HomeLayoute> createState() => _HomeLayouteState();
}

class _HomeLayouteState extends State<HomeLayoute> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc()
        ..createDatabase()
        ..getSala(),
      child: BlocConsumer<AppBloc, AppStatus>(
          listener: (context, state) {},
          builder: (context, state) {
            AppBloc cubit = AppBloc.get(context);

            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                iconTheme: const IconThemeData(color: Colors.black),
                backgroundColor: const Color(0xffE9EFC9),
                title: const Text(
                  'مساعدالحج',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: IconButton(
                  onPressed: () {
                    navigatorTo(context, MapScreen());
                  },
                  icon: const FaIcon(FontAwesomeIcons.locationArrow,
                     ),
                ),
              ),
              endDrawer: const DrawerScreen(),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CarouselSlider(
                          items: const [
                            Image(
                              image: AssetImage('assets/images/manask-hag.jpg'),
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Image(
                              image: AssetImage('assets/images/estadad-hag.jpg'),
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Image(
                              image: AssetImage('assets/images/ahkam-hag.jpg'),
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ],
                          options: CarouselOptions(
                            height: 200.0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: true,
                            autoPlayInterval: const Duration(seconds: 4),
                            autoPlayAnimationDuration:
                                const Duration(seconds: 3),
                            scrollDirection: Axis.horizontal,
                            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'العشاء',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    const FaIcon(MyHajjApp.moon,
                                        color: Colors.teal),
                                    if (state is getTimeInitialState)
                                      const CircularProgressIndicator(
                                        color: Colors.teal,
                                        strokeWidth: 20,
                                      ),
                                    if (state is getTimeSuccessState)
                                      Text(
                                        "${cubit.viewModel!.data!.timings!.isha}",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'المغرب',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    const FaIcon(MyHajjApp.cloud_moon,
                                        color: Colors.teal),
                                    if (state is getTimeInitialState)
                                      const CircularProgressIndicator(
                                        color: Colors.teal,
                                        strokeWidth: 20,
                                      ),
                                    if (state is getTimeSuccessState)
                                      Text(
                                        "${cubit.viewModel!.data!.timings!.maghrib}",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'العصر',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    const FaIcon(MyHajjApp.cloud_sun,
                                        color: Colors.teal),
                                    if (state is getTimeInitialState)
                                      const CircularProgressIndicator(
                                        color: Colors.teal,
                                        strokeWidth: 20,
                                      ),
                                    if (state is getTimeSuccessState)
                                      Text(
                                        "${cubit.viewModel!.data!.timings!.asr}",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'الظهر',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    const FaIcon(MyHajjApp.sun,
                                        color: Colors.teal),
                                    if (state is getTimeInitialState)
                                      const CircularProgressIndicator(
                                        color: Colors.teal,
                                        strokeWidth: 20,
                                      ),
                                    if (state is getTimeSuccessState)
                                      Text(
                                        "${cubit.viewModel!.data!.timings!.dhuhr}",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'الفجر',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    const FaIcon(MyHajjApp.fog_sun,
                                        color: Colors.teal),
                                    if (state is getTimeInitialState)
                                      const CircularProgressIndicator(
                                        color: Colors.teal,
                                        strokeWidth: 20,
                                      ),
                                    if (state is getTimeSuccessState)
                                      Text(
                                        "${cubit.viewModel!.data!.timings!.fajr}",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.90),
                          itemBuilder: (context, index) => CategoryCard(
                                product: products[index],
                              )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          if (product.id == 1) {
            navigatorTo(context, const Est3daScreen());
          } else if (product.id == 2) {
            navigatorTo(context, const ManasekElHAjj());
          } else if (product.id == 3) {
            navigatorTo(context, const AhkamElHajjScreen());
          } else {
            navigatorTo(context, const TawafScreen());
          }
        },
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image(
                image: AssetImage(product.image),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffE9EFC9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 20),
                  child: Text(
                    product.title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
