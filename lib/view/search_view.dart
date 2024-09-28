import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Search',
                labelStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'Enter City name',
                hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
          ),
        ),
      ),
    );
  }
}
