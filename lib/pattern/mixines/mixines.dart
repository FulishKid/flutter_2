import 'dart:async';

mixin PlayMusic {
  Function playMusic() => () => print('Music is playing');

  void turnOnMusic() {
    var music = playMusic();

    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      music();
    });
  }
}
