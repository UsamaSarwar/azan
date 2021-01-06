import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: Colors.white.withAlpha(30),
        onTap: () {
          Flushbar(
            backgroundColor: Colors.cyan.shade700,
            icon: Icon(
              Icons.insert_emoticon,
              size: 35.0,
              color: Colors.white,
            ),
            title: 'DEVELOPER',
            message: "Remember me in your prayers...",
            duration: Duration(seconds: 5),
            shouldIconPulse: false,
            flushbarPosition: FlushbarPosition.BOTTOM,
          ).show(context);
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 5.0, 18.0, 5.0),
                    child: Text(
                      'ABOUT DEVELOPER',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.cyan.shade700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.white),
                    // borderRadius: BorderRadius.circular(5.0), //new
                    // color: Colors.white, // new
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/usama.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'USAMA SARWAR',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 1.0,
                  // width: 500.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: Container(
                      width: 500.0,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
                Text(
                  'SOFTWARE ENGINEER',
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 5.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('tel:+923100007773');
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('mailto:UsamaSarwarOfficial@gmail.com');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.wikipediaW,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        onPressed: () {
                          launch('https://en.everybodywiki.com/Usama_Sarwar');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebookMessenger,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://m.me/usamasarwarofficial');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://wa.me/923100007773');
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://m.facebook.com/usamasarwarofficial');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://twitter.com/usamasarwarpro');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://g.page/UsamaSarwarOfficial');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://linkedin.com/in/usamasarwarofficial');
                        }),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          launch('https://instagram.com/usamasarwarofficial');
                        }),
                  ],
                ),
                SizedBox(
                  height: 100.0,
                ),
                
                Text(
                  'Sharing is Caring ♥',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
