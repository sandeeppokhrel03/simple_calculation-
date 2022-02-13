import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const mycolor = Color(0xFFE21717);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? p;
  double? t;
  double? r;
  double? result;
  double? totalamount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Simple Calculator'),
        backgroundColor: HomeScreen.mycolor,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              onChanged: (val) {
                p = double.parse(val);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: ' Principal Amount',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val) {
                r = double.parse(val);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: '  Rate',
                  // suffixIcon: Icon(Icons.home),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val) {
                t = double.parse(val);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: '  Time',
                  // suffixIcon: Icon(Icons.home),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                color: Colors.red,
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white),
                ),
                height: 50,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                onPressed: () {
                  print('hhi');

                  setState(() {
                    result = (p! * t! * r!) / 100;
                    totalamount = result! + p!;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "The Result is $result",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Total amount is = $totalamount".toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
