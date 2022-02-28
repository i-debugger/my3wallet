import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/sizedbox.dart';
import '../../homescreen/transactionsuccess/successfullupi.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/text.dart';

class EnterPinScreen extends StatefulWidget {
  const EnterPinScreen({Key? key}) : super(key: key);

  @override
  _EnterPinScreenState createState() => _EnterPinScreenState();
}

class _EnterPinScreenState extends State<EnterPinScreen> {
  final otp1 = TextEditingController();
  final otp2 = TextEditingController();
  final otp3 = TextEditingController();
  final otp4 = TextEditingController();
  final otp5 = TextEditingController();
  final otp6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeblack,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 100.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 130.0,
                ),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary2,
                    text: 'Enter UPI PIN',
                    weight: FontWeight.w700),
                const SizedBox30(),
                otpBox(),
                const SizedBox40(),
                BorderButton(
                  textName: 'PROCEED',
                  color: ThemeColors.primary1,
                  onPressed: () {
                    /* if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const RegisterSuccessfullScreen()));
                      log('Sign Up Screen 2');
                    }*/
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const UPISuccessfull()));
                  },
                  width: MediaQuery.of(context).size.width / 2.7,
                  weight: FontWeight.bold,
                  size: 18,
                ),
              ],
            )),
      ),
    );
  }

  Widget otpBox() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter MPIN";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //FocusScope.of(context).nextFocus();
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp2,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter MPIN";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //FocusScope.of(context).nextFocus();
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter MPIN";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //FocusScope.of(context).nextFocus();
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp4,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter otp';
                          }
                          return null;
                        },
                        /*  onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).nextFocus();
                          }
                        },*/
                        onChanged: (value) {
                          //FocusScope.of(context).nextFocus();
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        textInputAction: TextInputAction.go,
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp5,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter otp';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //FocusScope.of(context).nextFocus();
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        textInputAction: TextInputAction.go,
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.only(
              /*top: 10, */
              left: 5,
              right: 5, /* bottom: 5*/
            ),
            decoration: const BoxDecoration(
              color: ThemeColors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        controller: otp6,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter otp';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          /*  if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }*/
                          if (value.isEmpty) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textInputAction: TextInputAction.go,
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        decoration: InputDecoration(
                          counter: const Offstage(),
                          border: InputBorder.none,
                          hintText: "X",
                          hintStyle: GoogleFonts.montserrat(
                            color: ThemeColors.primary1,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: ThemeColors.primary1,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
