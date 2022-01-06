import 'package:flutter/material.dart';
import 'package:paseassignment/models/contacts.dart';

class RecentCard extends StatelessWidget {
  final Contacts  recentsdata;
  final Function ontap;
  const RecentCard({Key? key, required this.recentsdata,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            ontap();
          },
          child: ListTile(
            minVerticalPadding: 0.0,
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(recentsdata.contactImagepath),
            ),
            title: Text(recentsdata.contactName),
            subtitle: Text(recentsdata.contactNumber),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
        ),
        const Divider()
      ],
    );
  }
}
