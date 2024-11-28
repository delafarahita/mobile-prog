import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    position = getPosition();
    getPosition().then((Position myPos) {
      setState(() {
        myPosition =
            'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
      });
    }).catchError((e) {
      setState(() {
        myPosition = 'Error: $e';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location - Dela')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text(
                  'Something terrible happened!',
                  textAlign: TextAlign.center,
                );
              }
              if (snapshot.hasData) {
                return Text(
                  'Latitude: ${snapshot.data!.latitude}, Longitude: ${snapshot.data!.longitude}',
                  textAlign: TextAlign.center,
                );
              }
            }
            return const Text('Something went wrong.');
          },
        ),
      ),
    );
  }

  Future<Position> getPosition() async {
    // bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   throw Exception("Location services are disabled.");
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  //   LocationPermission permission = await Geolocator.requestPermission();
  //   if (permission == LocationPermission.denied) {
  //     throw Exception("Location permissions are denied");
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     throw Exception("Location permissions are permanently denied");
  //   }

  //   return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  // }
}
