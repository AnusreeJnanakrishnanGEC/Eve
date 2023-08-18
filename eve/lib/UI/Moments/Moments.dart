import 'package:eve/UI/Moments/Happiness.dart';
import 'package:flutter/material.dart';

class Moments extends StatefulWidget {
  const Moments({super.key});

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: AnimCard(
      Color(0xffFF6594),
      '',
      '',
      '',
    ),
    );
  }
}

class AnimCard extends StatefulWidget {
  final Color color;
  final String num;
  final String numEng;
  final String content;

  AnimCard(this.color, this.num, this.numEng, this.content);

  @override
  _AnimCardState createState() => _AnimCardState();
}

class _AnimCardState extends State<AnimCard> {
  var padding = 150.0;
  var bottomPadding = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPadding(
            padding: EdgeInsets.only(top: padding, bottom: bottomPadding),
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            child: Container(
              child: CardItem(
                widget.color,
                widget.num,
                widget.numEng,
                widget.content,
                    () {
                  setState(() {
                    padding = padding == 0 ? 150.0 : 0.0;
                    bottomPadding = bottomPadding == 0 ? 150 : 0.0;
                  });
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 200),
              height: 180,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2), blurRadius: 30)
                ],
                color: Colors.grey.shade200.withOpacity(1.0),
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Center(
                  child: GestureDetector(
                    child: Icon(Icons.favorite,
                        color: Color(0xffFF6594).withOpacity(1.0), size: 70),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Happiness()),
                      );
                    },
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Color color;
  final String num;
  final String numEng;
  final String content;
  final onTap;

  CardItem(this.color, this.num, this.numEng, this.content, this.onTap);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        height: 220,
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffFF6594).withOpacity(0.2), blurRadius: 25),
          ],
          color: color.withOpacity(1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tap to view more',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'What we all need is something to cherish, something to get busy with, and something to look forward to. With these three, anyone can live in eternal bliss.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}