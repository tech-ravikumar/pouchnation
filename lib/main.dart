import 'package:animations/animations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pouchvenue/ui/splash/splash.dart';
import 'package:pouchvenue/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/network/api_service.dart';
import 'data/network/interceptors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  final sharedPreferences = await SharedPreferences.getInstance();
  Dio dio = Dio();
  dio.interceptors.add(AppInterceptors());
  final ApiService apiService = ApiService(dio);
  runApp(MyApp(sharedPreferences, apiService));
}

class MyApp extends StatefulWidget {
  final SharedPreferences prefs;
  final ApiService api;
  const MyApp(this.prefs, this.api, {super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
      builder: (context,_) {
        return MaterialApp(
          title: 'Pouch venue',
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            fontFamily: 'Outfit',
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: SharedAxisPageTransitionsBuilder(
                transitionType: SharedAxisTransitionType.horizontal,
              ),
              TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
            }),
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: K.primaryColor,
            ),
          ),
          builder: (context,widget){
            return ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(
                physics: const BouncingScrollPhysics(),
              ),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      }
    );
  }
}
