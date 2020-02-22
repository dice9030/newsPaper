import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.newspaper), onPressed: (){},),
          Text('Top News', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: FadeInImage(
                image: NetworkImage('http://perfil.diegocelis.com/img/0.jpg'),
                placeholder: AssetImage('assets/loading.gif'),
                fit: BoxFit.cover,
                height: 40.0,
                width: 40,
              ),
            ),
            SizedBox(width: 15.0,)
        ],
        ),
    );
  }
}
