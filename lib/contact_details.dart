import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paseassignment/models/contacts.dart';
import 'package:paseassignment/models/navigator.dart';

class ContactDetails extends StatefulWidget {
  final Contacts contactlist;

  const ContactDetails({ Key? key ,required this.contactlist}) : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    Contacts c = widget.contactlist;
    return Scaffold(
      backgroundColor: Constants.cardColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black,),
        title: const Text("Contacts",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation:0.0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.black))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage(c.contactImagepath),radius: 50,),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Text(c.contactName,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                 Text(c.contactLocation,style: const TextStyle(color: Constants.cardsubtitlecolor,fontWeight: FontWeight.bold),)
              ],
            ),
          ),

           Padding(padding: const EdgeInsets.symmetric(
              vertical: 10,horizontal: 15),
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Mobile",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(c.contactNumber,
                    style: const TextStyle(color: Constants.cardsubtitlecolor,fontWeight: FontWeight.bold),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const[
                        Icon(Icons.video_call,color: Colors.black,size:20),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Icon(Icons.message_rounded,color: Colors.black,size: 20),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Icon(Icons.call,color: Colors.black,size: 20),
                      ],
                    ),
                  ),

                  ListTile(
                    title: const Text("Email",style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(c.contactEmail,style: 
                    const TextStyle(color: Constants.cardsubtitlecolor,fontWeight: FontWeight.bold),),
                    trailing: const Icon(Icons.email,color: Colors.black,size: 20),
                  ),

                  const ListTile(
                    title:  Text("Group",style:TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Campus Friends",
                    style: TextStyle(color: Constants.cardsubtitlecolor,fontWeight: FontWeight.bold),),
                    trailing:  Icon(Icons.group_work_sharp,color: Colors.black,size: 20)
                  )
                  
                  ],
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 35,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                elevation: 5.0,
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal:20,vertical:8),
                  child: Text("Account Linked",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.symmetric(
              vertical: 0,horizontal:15),
              child: Column(
                children: const[
                  ListTile(
                    title: Text("Telegram",style:TextStyle(fontWeight:FontWeight.bold)),
                    trailing: Icon(Icons.watch_later_sharp,color: Colors.black,size: 20),
                  ),

                  ListTile(
                    title: Text("WhatsApp",style:TextStyle(fontWeight:FontWeight.bold)),
                    trailing: Icon(Icons.whatshot,color: Colors.black,size: 20)
                  )
                ],
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 35,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                elevation: 5.0,
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal:20,vertical:8),
                  child: Text("More Options",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                ),
              ),
            ),


            Padding(padding: const EdgeInsets.symmetric(
                vertical: 0,horizontal:15),
                child: Column(
                  children: const[
                    ListTile(
                      title: Text("Share Contact",style:TextStyle(fontWeight:FontWeight.bold)),
                      trailing: Icon(Icons.share_sharp,color: Colors.black,size: 20),
                    ),
                  ],
                ),
              ),

        ],
      ),
    );
  }
}