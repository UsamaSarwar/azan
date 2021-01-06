import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:loading_indicator/loading_indicator.dart';
import './Screen/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var assetsAudioPlayer = AssetsAudioPlayer();
  IconData playPauseIcon = Icons.record_voice_over;

  void playpause() {
    assetsAudioPlayer.playOrPause();
    setState(() {
      if (!assetsAudioPlayer.isPlaying.value) {
        playPauseIcon = Icons.play_arrow;
      } else {
        playPauseIcon = Icons.pause;
      }
    });
  }

  @override
  void initState() {
    playPauseIcon = Icons.record_voice_over;
    assetsAudioPlayer.open(
      Audio("assets/audio/adhan.mp3"),
      autoStart: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Azan',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.cyan,
        accentColor: Colors.cyan,
      ),
      home: BackdropScaffold(
        // title: Text('Azan'),
        appBar: BackdropAppBar(
          centerTitle: true,
          title: Text(
            'Azan',
            style: TextStyle(color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[Colors.cyan, Colors.cyan.shade600],
              ),
            ),
          ),
        ),

        animationCurve: Curves.decelerate,
        backLayer: Profile(),
        frontLayer: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/azan.jpg'),
            ),
          ),
          child: InkWell(
            splashColor: Colors.cyan.withAlpha(30),
            onTap: () {
              playpause();
            },
            child: Container(
              
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      // color: Colors.transparent,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballScaleMultiple,
                        color: Colors.cyan.withOpacity(0.3),
                      ),
                    ),
                    IconButton(
                        iconSize: 100.0,
                        icon: Icon(
                          playPauseIcon,
                          color: Colors.cyan,
                        ),
                        onPressed: () {
                          playpause();
                        }),
                    // Image.asset(
                    //   'assets/images/azan.jpg',
                    //   fit: BoxFit.fill,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.replay,
            color: Colors.white,
          ),
          onPressed: () {
            assetsAudioPlayer.stop();
            assetsAudioPlayer.open(
              Audio("assets/audio/adhan.mp3"),
              autoStart: false,
            );
            playpause();
          },
        ),
      ),
    );
  }
}
