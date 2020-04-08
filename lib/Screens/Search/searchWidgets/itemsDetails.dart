import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  final int id;
  final String day;
  final String date;
  final String duration;
  final String time;
  final String availability;
  final String doc_id;
  final String patient_id;
  final String pharmacy_id;
  final String lap_id;
  final String doc_name;
  final String medical_report;

  AppointmentItem(
    this.id,
    this.day,
    this.date,
    this.duration,
    this.time,
    this.availability,
    this.doc_id,
    this.patient_id,
    this.pharmacy_id,
    this.lap_id,
    this.doc_name,
    this.medical_report,
  );

  @override
  Widget build(BuildContext context) {
    Widget child;
    Widget child2;
    if (availability=='YES') {
      child = new Text("availabe from  $day $date ",textAlign: TextAlign.start,
        style: TextStyle(fontSize: 12,color: Color(0xFF4E7A9F)),);
      child2 = new Icon(Icons.fiber_manual_record,color: Color(0xFF32CD32),size: 18,);

    }
    else {
      child = new Text("Not availabe",textAlign: TextAlign.start,
        style: TextStyle(fontSize: 12,color: Color(0xFF4E7A9F)),);
    child2 = new Icon(Icons.fiber_manual_record,color: Colors.red,size: 18,);

    }
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
//            Navigator.of(context).pushNamed(
//              ProductDetailScreen.routeName,
//              arguments: id,
//            );
                },
                child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image.asset(
                              "images/Doctor.png",
                              height: MediaQuery.of(context).size.height * 0.09,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                          ),
                          Center(child: Text("$doc_name",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
                          Padding(
                            padding: EdgeInsets.all(2),
                          ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              child2,
                              Padding(
                                padding: EdgeInsets.all(2),
                              ),
                              child
                            ],

                            ),
                            Row(children: <Widget>[
                              child2,
                              Padding(
                                padding: EdgeInsets.all(2),
                              ),
                              Text("Accept the discont codes ",textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 12,color: Color(0xFF4E7A9F)),)
                            ],

                            ),
                            Row(children: <Widget>[
                              child2,
                              Padding(
                                padding: EdgeInsets.all(2),
                              ),
                              Text("university",textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 12,color: Color(0xFF4E7A9F)),)
                            ],

                            ),
                          ],
                        ),
                      )
                        ],
                      ),
                    )),
              ),

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 220),
          child: Center(
            child: RaisedButton(
              child: Text('Book',style: TextStyle(color: Colors.white,fontSize: 18),),
                onPressed: (){},
                color: Color(0xFFe37b7b),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
                ),
          ),
        )
      ],
    );
  }


}
