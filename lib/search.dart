import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)),
        elevation: 5.0,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 45,
        child: TextFormField(
          decoration: const InputDecoration(
             border: InputBorder.none,
            hintText: 'search by name or number',
            prefixIcon: Icon(Icons.search,color: Colors.black54,)
          ),
        ),
      ),
    );
  }
}