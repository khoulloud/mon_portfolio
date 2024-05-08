import 'package:flutter/material.dart';

class CardExp extends StatefulWidget {
  final String companyName;
  final String date;
  final String jobTitle;
  final List<String> skills;

  CardExp({
    required this.companyName,
    required this.date,
    required this.jobTitle,
    required this.skills,
  });

  @override
  _CardExpState createState() => _CardExpState();
}

class _CardExpState extends State<CardExp> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeInOutQuint,
        padding: EdgeInsets.all(8),
        duration: Duration(milliseconds: 600),
        height: isOpen ? 320 : 120, // Réduire la hauteur de l'animation
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple[50]!,
              Colors.purple[100]!,
            ],
          ),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 8), // Réduire l'espace vertical
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.domain,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.companyName,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.date,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.jobTitle,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: (widget.skills.length * 19).toDouble(),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 1,
                  childAspectRatio: 20,
                  children: List.generate(widget.skills.length, (index) {
                    return Text(
                      '• ${widget.skills[index]}',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
