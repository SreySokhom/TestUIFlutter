import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testfirstapp/Model/donuts_model.dart';
import 'package:testfirstapp/Screen/detail_donut.dart';


class DonutScreen extends StatefulWidget {
  @override
  _DonutScreenState createState() => _DonutScreenState();
}

class _DonutScreenState extends State<DonutScreen> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: Container(
        color: Colors.blueGrey[100],
        child:GridView.count(
          padding: const EdgeInsets.only( bottom: 10),
            crossAxisCount: 2,
            children: List.generate(donuts.length, (index) {
              return Center(
                child: DonutList(donut: donuts[index],index: index,),
              );
            }))),
    );
  }
}


class DonutList extends StatefulWidget {
  const DonutList({Key key, this.donut, this.index}) : super(key: key);
  final Donut donut;
  final int index;
  @override
  _DonutListState createState() => _DonutListState();
}

class _DonutListState extends State<DonutList> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailDonutScreen(donut: widget.donut)),
          );
        },
        child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.primaries[ (widget.index-10)  %  Colors.primaries.length],
                          borderRadius: BorderRadius.only(topRight:  Radius.circular(15), bottomLeft: Radius.circular(15)),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      height: MediaQuery.of(context).size.height/22,
                      child: Center(
                        child: Text(String.fromCharCodes(new Runes('\u0024')) + widget.donut.price,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(widget.donut.image,
                      height:MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.width/3),
                  ),
                  Text(widget.donut.name, style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.donut.kind, style:TextStyle(
                        fontSize: 14,
                      )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                        child: Icon(Icons.favorite_border, size: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
                        child:Text(widget.donut.rate,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      )
                    ],
                  )
                ]
            )
        ),
      ),
    );
  }
}
