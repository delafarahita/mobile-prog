import 'dart:async';
import 'package:books/navigation_first.dart';
import 'package:books/navigation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'geolocation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo - Dela',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  late Completer<int> completer;

  Future<int> getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<http.Response> getData() async {
    final url =
        Uri.parse('https://www.googleapis.com/books/v1/volumes/YWIFEAAAQBAJ');
    return await http.get(url);
  }

  void returnFG() {
  Future.wait([
    returnOneAsync(),
    returnTwoAsync(),
    returnThreeAsync(),
  ]).then((List<int> values) {
    int total = 0;
    for (var value in values) {
      total += value;
    }
    setState(() {
      result = total.toString();
    });
  }).catchError((e) {
    setState(() {
      result = 'An error occurred';
    });
  });
}

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async {
    try {
      await returnError();
    }
    catch (error) {
      setState(() {
        result = error.toString();
      });
    }
    finally {
      print('Complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future - Dela'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                // setState(() {});
                // count();
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // }).catchError((e) {
                //   result = 'An error occurred';
                // });
                
                //returnFG();

                // returnError().then((value){
                //   setState(() {
                //     result = 'Success';
                //   });
                // }).catchError((onError){
                //   setState(() {
                //     result = onError.toString();
                //   });
                // }).whenComplete(() => print('Complete'));

                handleError();
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
