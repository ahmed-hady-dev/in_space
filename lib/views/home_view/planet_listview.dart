import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/input_data_controller.dart';
import '../../models/planet_model.dart';

class PlanetListView extends StatelessWidget {
  const PlanetListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double input = Provider.of<InputDataController>(context).input;

    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: planetList.length,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          child: Card(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        planetList[index].name.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            (planetList[index].mulNumber * input)
                                .toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' KG',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Image.asset(
                      planetList[index].imagePath,
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
