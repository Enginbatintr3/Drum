import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// ignore: import_of_legacy_library_into_null_safe

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioCache();
  String aud2 = "";
  void playAudio(String aud) {
    setState(() {
      aud2 = aud;
    });
    player.play("$aud.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Drum Machine App",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                myMethod("Bip", "bip"),
                myMethod("Bongo", "bongo"),
              ],
            ),
            Row(
              children: [
                myMethod("Clap1", "clap1"),
                myMethod("Clap2", "clap2"),
              ],
            ),
            Row(
              children: [
                myMethod("Clap3", "clap3"),
                myMethod("Crash", "crash"),
              ],
            ),
            Row(
              children: [
                myMethod("How", "how"),
                myMethod("Oobah", "oobah"),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: Colors.black87, width: 1),
                ),
                child: Center(
                  child: Text(
                    aud2,
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Expanded myMethod(String text, String aud) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playAudio(aud);
          aud;
        },
        child: Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border.all(color: Colors.black87, width: 1),
          ),
          child: Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
