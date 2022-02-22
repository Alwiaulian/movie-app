import 'package:doraemon_app/navbar.dart';
import 'package:doraemon_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';
// import './ui/view.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import './ui/Home.dart';
import 'core/flutter_no_sql.dart';
import 'ui/popular_movies_page.dart';
import 'ui/top_rates_movies_page.dart';
import 'ui/now_playing_page.dart';
import 'ui/upcoming_page.dart';

void main() {
  runApp(MyApp());
  Future.delayed(const Duration(seconds: 0), () async {
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterNoSql.initFlutter();
    WidgetsFlutterBinding.ensureInitialized();
    // await checkToken();
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: AppColors.mainColor,
        fontFamily: AppFontName.PoppinsRegular,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      next();
    });
  }

  // LoginModel loginModel;

  void next() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Navbar(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              'Movies App',
              style: AppTextStyle.regularTextStyle.copyWith(
                fontSize: 28,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            // child: SvgPicture.asset('assets/svg/up_arrow.svg'),
          ),
        ),
      ),
    );
  }
}
