//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by 임우섭 on 2022/03/03.
//  MVVM (ViewModel)

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐",
                         "🛻","🚚","🚛","🚜","🚲","🏍","🛺","🚘","🚖","🚠",
                         "🚟","🚃","🚋","🚞","🚝","🚄","🚅","🚈","🚂","✈️",]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
