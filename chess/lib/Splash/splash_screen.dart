import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:team_chess/Home/home_page.dart';


class Spalsh_Screen extends StatefulWidget {
  const Spalsh_Screen({Key? key}) : super(key: key);

  @override
  State<Spalsh_Screen> createState() => _Spalsh_ScreenState();
}

class _Spalsh_ScreenState extends State<Spalsh_Screen> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Shimmer.fromColors(
              highlightColor: Colors.grey.shade600,
              baseColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Chess',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                        fontFamily: 'pacifico'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    FontAwesomeIcons.chess,
                    color: Colors.white,
                    size: 80.0,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}