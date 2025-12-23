import Foundation
import AVFoundation
import Combine

class AudioPlayerManager: ObservableObject {
    var player: AVAudioPlayer?

    func play(songName: String) {
        guard let url = Bundle.main.url(forResource: songName, withExtension: "mp3") else {
            print("Song not found")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Error playing audio:", error)
        }
    }

    func pause() {
        player?.pause()
    }
}
