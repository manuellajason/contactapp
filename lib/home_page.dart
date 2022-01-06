import 'package:flutter/material.dart';
import 'package:paseassignment/contact_cards.dart';
import 'package:paseassignment/contact_details.dart';
import 'package:paseassignment/models/contacts.dart';
import 'package:paseassignment/models/navigator.dart';
import 'package:paseassignment/recent_card.dart';
import 'package:paseassignment/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "My Contacts",
          style: TextStyle(
           fontSize: 20,
           color: Colors.black,
          fontWeight: FontWeight.bold),
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('drawables/ts2.png'))
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
        children:[
          const SearchBox(),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Text(
              "Recents",
              style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
              ),
          ),

          const Divider(),
          SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: List.generate(recentList.length, (index){
               return RecentCard(
                 recentsdata: recentList[index],
                 ontap: (){
                   pageIntent(context, ContactDetails(contactlist: recentList[index],));
                 },
               );
             })
           ),
          ),

          const Padding(
            padding:  EdgeInsets.only(bottom: 20,left: 10),
            child:  Text(
                "Contacts",
                style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
                ),
          ),

          const Padding(
            padding:  EdgeInsets.only(right: 10),
            child: Text("A",textAlign: TextAlign.end,style: TextStyle(
              fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold
            ),),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(contactlistA.length, (index){
                return ContactCards(
                  contacts: contactlistA[index],
                  ontap: (){
                    pageIntent(context, ContactDetails(contactlist: contactlistA[index],));
                  }
                  );
              }),
            ),
          ),

         const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text("B",textAlign: TextAlign.end,style: TextStyle(
              fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold
            ),),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(contactlistB.length, (index){
                return ContactCards(
                  contacts: contactlistB[index],
                  ontap: (){
                    pageIntent(context, ContactDetails(contactlist: contactlistB[index],));
                  },
                  );
              }),
            ),
          )
        ],
      ),
    );
  }
}