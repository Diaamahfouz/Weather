import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/getWeatherCubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Search',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.orange, Colors.blue]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            cursorColor: Colors.black,
            onSubmitted: (value) {
              GetWeatherCubit getWeatherCubit =
                  BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(value);
              Navigator.pop(context);
            },
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
            decoration: const InputDecoration(
                focusColor: Colors.black,
                suffixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: 'Search',
                labelStyle: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                hintText: 'Enter City name',
                hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
          ),
        ),
      ),
    );
  }
}
