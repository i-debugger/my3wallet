import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

/*class BorderButtonWithWidth extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final double width;
  final FontWeight weight;
  final double size;

  const BorderButtonWithWidth({
    Key? key,
    required this.textName,
    required this.onPressed,
    required this.width,
    required this.weight,
    required this.size,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: width,
      decoration: BoxDecoration(
          color: ThemeColors.primary1,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: ThemeColors.black)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          primary: ThemeColors.primary1,
        ),

        onPressed: () {
          onPressed();
        },
        child: Text(
            textName,
            style: GoogleFonts.lato(
              color: ThemeColors.black,
              fontWeight: weight,
              fontSize: size,
            )
        ),
      ),
    );
  }
}*/

class BorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final double width;
  final FontWeight weight;
  final double size;
  final Color color;

  const BorderButton({
    super.key,
    required this.textName,
    required this.onPressed,
    required this.width,
    required this.weight,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(
                color: color,
                width: 3,
              )), backgroundColor: ThemeColors.black,
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(textName,
            style: GoogleFonts.lato(
              color: color, //ThemeColors.primary1,
              fontWeight: weight,
              fontSize: size,
            )),
      ),
    );
  }
}

class BorderWithIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textName;
  final double width;
  final FontWeight weight;
  final double size;
  final Icon icon;

  const BorderWithIconButton({
    super.key,
    required this.textName,
    required this.onPressed,
    required this.width,
    required this.weight,
    required this.size,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(
                color: ThemeColors.primary1,
                width: 3,
              )), backgroundColor: ThemeColors.black,
        ),
        onPressed: () {
          onPressed();
        },
        child: Row(
          children: [
            Text(textName,
                style: GoogleFonts.lato(
                  color: ThemeColors.primary1,
                  fontWeight: weight,
                  fontSize: size,
                )),
            const SizedBox(
              width: 5.0,
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
