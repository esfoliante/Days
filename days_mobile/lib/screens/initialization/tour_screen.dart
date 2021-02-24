import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TourScreen extends StatefulWidget {
  TourScreen({Key key}) : super(key: key);

  @override
  _TourScreenState createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<String> setences = [
      "Days é um sistema de gestão escolar que se foca nos alunos.\n\nPodes usar esta app para ver as tuas notas, faltas, ver as tuas médias, carregar o cartão e muito mais!",
      "Se tu te perdes no tempo e não sabes qual é o teu horário ou se te esqueces sempre da tua média escolar, podes aceder à tua atividade.\n\nNa tua atividade podes encontrar um monte de informações tais como reuniões e faltas.",
    ];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Text(
                  "Sobre a\napp...",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: width * 0.1,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: height * 0.35,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    enableInfiniteScroll: false,
                  ),
                  items: setences.map((setence) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            '$setence',
                            style: TextStyle(
                              fontSize: height * 0.018,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: setences.map((i) {
                    int index = setences.indexOf(i);
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: _current == index
                            ? Border.all(
                                color: Colors.transparent,
                              )
                            : Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1,
                              ),
                        color: _current == index
                            ? Theme.of(context).accentColor
                            : Colors.transparent,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    width: width * 0.7,
                    constraints: BoxConstraints(
                      minWidth: 250.0,
                    ),
                    child: FlatButton(
                      child: Text(
                        "C O M E Ç A R",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.05,
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'home'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
