import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Piano(),
    );
  }
}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  var player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Container(
          padding: EdgeInsets.only(top: 5, left: 10),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(right: 30, left: 5),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource('piano_notes/piano-c_C_major.wav'));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 80,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-d_D_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      left: 131,
                      //not
                      child: GestureDetector(
                        onTap: () {
                          player.play(
                              AssetSource("piano_notes/piano-c_C1_major.wav"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-e_E_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      left: 131,
                      //not
                      child: GestureDetector(
                        onTap: () {
                          player.play(
                              AssetSource("piano_notes/piano-eb_D1_major.wav"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0),
                              color: Colors.black,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-f_F_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-g_G_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      left: 131,
                      child: GestureDetector(
                        onTap: () {
                          player.play(
                              AssetSource("piano_notes/piano-f_F1_major.wav"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.white, width: 0),
                              color: Colors.black,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-a_A_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      left: 131,
                      child: GestureDetector(
                        onTap: () {
                          player.play(
                              AssetSource("piano_notes/piano-g_G1_major.wav"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0),
                              color: Colors.black,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-b_B_major.wav"));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 90,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      left: 131,
                      child: GestureDetector(
                        onTap: () {
                          player.play(
                              AssetSource("piano_notes/piano-bb_A1_major.wav"));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0),
                              color: Colors.black,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}