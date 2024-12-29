//
//  SandSoundGameApp.swift
//  SandSoundGame
//
//  Created by Manar Alghmadi on 29/12/2024.
//

import SwiftUI

@main
struct SandSoundApp: App {
    @StateObject var gameViewModel = GameViewModel(gameDuration: 20, gameMode: .game)
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .environmentObject(gameViewModel)
                .preferredColorScheme(.dark)
        }
    }
}
