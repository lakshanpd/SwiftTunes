import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NowPlayingView()
                .tabItem {
                    Label("Now Playing", systemImage: "play.circle.fill")
                }

            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "music.note.list")
                }
        }
    }
}

#Preview {
    ContentView()
}
