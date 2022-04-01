import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_chess/Home/game_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChessBoardController controller = ChessBoardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Chess',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70.0,
                      fontFamily: 'pacifico'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  FontAwesomeIcons.chess,
                  color: Colors.white,
                  size: 70.0,
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const GamePage(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.white)
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text( 'Start Game',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontFamily: 'pacifico'),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}