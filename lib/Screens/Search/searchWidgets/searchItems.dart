import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yelpp/Providers/itemData.dart';

import 'itemsDetails.dart';

class AppointmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appointmentsData = Provider.of<ItemsDataProvider>(context);
    final DataItems = appointmentsData.items;
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.40,
              crossAxisCount: 1,
              mainAxisSpacing: 30,
            ),
            itemCount: DataItems.length,


            padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.07),
            itemBuilder: (ctx, i) => AppointmentItem(
              DataItems[i].id,
              DataItems[i].day,
              DataItems[i].date,
              DataItems[i].duration,
              DataItems[i].time,
              DataItems[i].availability,
              DataItems[i].doc_id,
              DataItems[i].patient_id,
              DataItems[i].pharmacy_id,
              DataItems[i].lap_id,
              DataItems[i].doc_name,
              DataItems[i].medical_report,

            ),
          );

       
  }
}
