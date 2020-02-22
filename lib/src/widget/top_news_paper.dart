import 'package:flutter/material.dart';


class TopNewsPaper extends StatelessWidget {

  final List<Map<String,String>> _newsPaper = [ 
                  {'img':'https://images.outbrainimg.com/transform/v3/eyJpdSI6Ijc2MjU4M2NmZTcyODZmN2U5MWY3NWQzNTBmZDQ1MzU0MjU4MjM1Y2IyNmQ5OGYzZGYwNTQ3YjQyYTE3NmFjOTMiLCJ3IjozNzAsImgiOjIyMCwiZCI6MS41LCJjcyI6MCwiZiI6NH0.webp','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200221165844-dominic-cummings-021220-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218181234-aerocircular-airbus-a320-dismantled-for-use-in-action-movie-2-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/191212131003-michael-vick-falcons-trnd-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200219220723-mourinho-rb-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218151901-amazon-parcel-conveyor-belt-scan-file-restricted-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://images.outbrainimg.com/transform/v3/eyJpdSI6IjlhOWUwMDAwYjBmMmFjNGNiOTY2NjI1NTczNDhjYjRiMzA1NTNiYTkyZDY3NjM4MTdiZTc4YzAyZDVkZTc0YjMiLCJ3IjozNzAsImgiOjIyMCwiZCI6MS41LCJjcyI6MCwiZiI6NH0.webp','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  
                  ];
  
  @override
  Widget build(BuildContext context) {
    final _screenSie = MediaQuery.of(context).size;
    return Container(
      
        height: _screenSie.height * 0.40,
        child: PageView(
          pageSnapping: false,
          controller: PageController(
            initialPage: 0,
            viewportFraction: 0.9
          ),
          children: _tarjetas(),
        ),
    );
  }

  List<Widget> _tarjetas(){
    return _newsPaper.map((newsPaper){
      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: FadeInImage(
                image: NetworkImage(newsPaper['img']),
                placeholder: AssetImage('assets/loading.gif'),
                fit: BoxFit.cover,
                height: 230.0,
                width: 400,
              ),
            ),
            SizedBox(height: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('STATUS', style: TextStyle(color: Colors.grey),),
                Text(newsPaper['titulo'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), )
              ],
            )
            
          ],
        ),
      );
    }).toList();
  }
}