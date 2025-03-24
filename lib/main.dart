import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const SoundBoard());
}

class SoundBoard extends StatefulWidget {
  const SoundBoard({super.key});

  @override
  State<SoundBoard> createState() => _SoundBoardState();
}

class _SoundBoardState extends State<SoundBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          titleSpacing: 0.0,
          leading: Icon(Icons.library_music),
          title: Text(
            "Goofy Aah SFX",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 500,
              height: 500,
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/bell.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/flashbang.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/goofaahrun.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/huh.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/vineBoom.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),ElevatedButton(
                    onPressed: () async {
                      AudioCache.instance = AudioCache(prefix: '');
                      final player = AudioPlayer();
                      await player.play(AssetSource('assets/audio/augh.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.black
                    ),
                    child: Text("")
                  ),
                ],
              ),
            ),
          ) 
        ),
      ),
    );
  }
}