import 'package:flutter/material.dart';
import 'package:paseassignment/models/contacts.dart';

class ContactCards extends StatelessWidget {
  final Contacts contacts;
  final Function ontap;
  const ContactCards({ Key? key, required this.contacts ,required this.ontap}) : super(key: key);

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
              backgroundImage: AssetImage(contacts.contactImagepath),
            ),
            title: Text(contacts.contactName),
            subtitle: Text(contacts.contactNumber),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
        ),
       const Divider()
      ],
    );
  }
}