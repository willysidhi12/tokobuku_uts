import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokobuku_uts/home.dart';

class Sukses extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Notif',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.asset(
            'images/RK.jpeg',
            width: 300,
            height: 200,
          ),
          Text(
            'Selamat !!!',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'BUKU BERHASIL DIBELI',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '*BUKU AKAN KAMI KIRIMKAN KE TEMPAT TUJUAN*',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text(
              "SELESAI",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87),
            ),
          ),
        ]),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        child: RaisedButton(
          color: Colors.white,
          child: Text(
            '',
            style: TextStyle(
              fontSize: 21,
              color: Colors.black87,
              fontWeight: FontWeight.w900,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
