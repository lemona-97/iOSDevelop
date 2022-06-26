//
//  memorizeApp.swift
//  memorize
//
//  Created by 임우섭 on 2022/02/21.
//

import SwiftUI

@main
struct memorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
