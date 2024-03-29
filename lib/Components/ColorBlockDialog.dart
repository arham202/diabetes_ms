import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorBlocksDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorBlock(color: Colors.teal, text: "Before"),
            ColorBlock(color: Colors.deepPurpleAccent, text: "After"),
            ColorBlock(color: Colors.lightBlue, text: "Low Sugar"),
          ],
        ),
      ),
    );
  }
}

class ColorBlock extends StatelessWidget {
  final Color color;
  final String text;

  ColorBlock({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: color,
          ),
          Text(text,style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),)
        ],
      ),
    );
  }
}

class ColorBlocksDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorBlock2(color: Colors.teal, text: "Meal Bolus"),
            ColorBlock2(color: Colors.deepPurpleAccent, text: "Basal Insulin"),
            ColorBlock2(color: Colors.lightBlue, text: "Correction Dose"),
          ],
        ),
      ),
    );
  }
}

class ColorBlock2 extends StatelessWidget {
  final Color color;
  final String text;

  ColorBlock2({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: color,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(text,softWrap:true,style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),),
          )
        ],
      ),
    );
  }
}