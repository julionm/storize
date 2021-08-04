import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            child: Center(
                child: Text("Storize", style: GoogleFonts.inter(fontSize: 20))),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [],
            ),
            Row(
              children: [],
            ),
            Row(
              children: [],
            ),
          ],
        ));
  }
}
