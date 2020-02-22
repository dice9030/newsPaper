import 'package:flutter/material.dart';

class GridViewNewsPaper extends StatelessWidget {

  final List<Map<String,String>> _newsPaper = [ 
                  {'img':'https://images.outbrainimg.com/transform/v3/eyJpdSI6Ijc2MjU4M2NmZTcyODZmN2U5MWY3NWQzNTBmZDQ1MzU0MjU4MjM1Y2IyNmQ5OGYzZGYwNTQ3YjQyYTE3NmFjOTMiLCJ3IjozNzAsImgiOjIyMCwiZCI6MS41LCJjcyI6MCwiZiI6NH0.webp','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200221165844-dominic-cummings-021220-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218181234-aerocircular-airbus-a320-dismantled-for-use-in-action-movie-2-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218181234-aerocircular-airbus-a320-dismantled-for-use-in-action-movie-2-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218181234-aerocircular-airbus-a320-dismantled-for-use-in-action-movie-2-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/191212131003-michael-vick-falcons-trnd-medium-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200219220723-mourinho-rb-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200218151901-amazon-parcel-conveyor-belt-scan-file-restricted-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://images.outbrainimg.com/transform/v3/eyJpdSI6IjlhOWUwMDAwYjBmMmFjNGNiOTY2NjI1NTczNDhjYjRiMzA1NTNiYTkyZDY3NjM4MTdiZTc4YzAyZDVkZTc0YjMiLCJ3IjozNzAsImgiOjIyMCwiZCI6MS41LCJjcyI6MCwiZiI6NH0.webp','titulo':'Top startups are changing the way we travel'},
                  {'img':'https://cdn.cnn.com/cnnnext/dam/assets/200220232133-03-coronavirus-south-korea-0220-large-tease.jpg','titulo':'Top startups are changing the way we travel'},
                  
                  ];
  @override
  Widget build(BuildContext context) {
    // final title = 'Grid List';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Noticias Recientes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),)
        ),
        SizedBox(height:10.0),
        GridView.count(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
      shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(_newsPaper.length, (index){
          return GestureDetector(
             onTap: (){
              Navigator.pushNamed(context, 'NewsPaper');
            },
            child: Column(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: FadeInImage(
                  image: NetworkImage('${_newsPaper[index]['img']}'),
                  placeholder: AssetImage('assets/loading.gif'),
                  fit: BoxFit.cover,
                  height: 100.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('STATUS', style: TextStyle(color: Colors.blue,fontSize: 12.0),),
                    Text('${_newsPaper[index]['titulo']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0), )
                  ],
                ),
              )
            ],
        
            ),
          );
        })
      ),
      ],

          
    );
  }
}

