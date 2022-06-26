//
//  ContentView.swift
//  memorize
//
//  Created by 임우섭 on 2022/02/21.
//  MVVM (View)

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
   
    @State var emojiCount = 4
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(viewModel.cards){ card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture{
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(.red)
           
        }
            .padding(.horizontal)
           
            
            
            
    }
    
}
//카드가 어떻게 생겼는지 보여주는 view가 됨.
struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle).foregroundColor(.orange)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
}











































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
        
    }
}
