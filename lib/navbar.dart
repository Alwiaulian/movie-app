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

// void main() {
//   runApp(Navbar());
//   Future.delayed(const Duration(seconds: 0), () async {
//     WidgetsFlutterBinding.ensureInitialized();
//     await FlutterNoSql.initFlutter();
//     WidgetsFlutterBinding.ensureInitialized();
//     // await checkToken();
//   });
// }

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NavbarState();
  }
}

class NavbarState extends State<Navbar> {
  int _selectedPage = 0;
  final _pageOptions = [
    const UpComing(),
    const NowPlaying(),
    const ProfilePage(),

    const PopularMoviesPage(),
    // GroupListViewDemo(),
    // Content(),
    // Content(),
  ];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Film Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        // appBar: AppBar(
        //     // title: Text('Riwayat Transaksi'),
        //     ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          // bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.upcoming), title: Text('Upcoming')),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow), title: Text('Now Playing')),
            BottomNavigationBarItem(
                icon: Icon(Icons.rate_review), title: Text('Top Rates ')),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), title: Text('Popular')),
          ],
          // ),
        ),
      ),
    );
  }
}
