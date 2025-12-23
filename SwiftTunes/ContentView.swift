import SwiftUI

struct ContentView: View {
    @StateObject private var audioManager = AudioPlayerManager()

    var body: some View {
        VStack(spacing: 20) {
            Text("🎵 Simple Music Player")
                .font(.title)

            Button("Playy") {
                audioManager.play(songName: "song_1")
            }

            Button("Pause") {
                audioManager.pause()
            }
        }
        .padding()
    }
}
