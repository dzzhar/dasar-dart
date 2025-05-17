abstract class NewMediaPlayer {
  void play(String fileName);
}

class OldMediaPlayer {
  void playAudio(String fileName) {
    print("Playing audio: $fileName using OldMediaPlayer");
  }
}

class MediaAdapter implements NewMediaPlayer {
  final OldMediaPlayer _oldPlayer; // deklarasi object old class

  MediaAdapter(this._oldPlayer);

  @override
  void play(String fileName) {
    _oldPlayer.playAudio(fileName);
  }
}

void main() {
  var oldPlayer = OldMediaPlayer();
  var adapter = MediaAdapter(oldPlayer);

  adapter.play('Lagu.mp3');
}
