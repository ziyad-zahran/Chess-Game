import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Chess',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontFamily: 'pacifico'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                FontAwesomeIcons.chess,
                color: Colors.white,
                size: 50.0,
              )
            ],
          ),
          const Spacer(),
          ChessBoard(
            controller: controller,
            boardColor: BoardColor.brown,
            boardOrientation: PlayerColor.white,
            enableUserMoves: true,
            size: MediaQuery.of(context).size.width,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}