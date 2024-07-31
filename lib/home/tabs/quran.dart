
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/moshaf_header_icn-1.png',
          height: 227,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'عدد الآيات',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 30,
                color: Color(0xffB7935F),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  'إسم السورة',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '286',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inder(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 30,
                      color: Color(0xffB7935F),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'البقرة',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inder(
                          fontSize: 25,

                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}