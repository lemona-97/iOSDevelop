//
//  ContentView.swift
//  Memorize_assign1
//
//  Created by 임우섭 on 2022/03/05.
//

import SwiftUI
var emojis1 = ["🚂","🚀","🚁","🚜","🚗",
               "🚕","🚙","🚌","🚎","🏎",
               "🚓","🚑","🚒","🚐","🛻",
               "🚚","🚛","🛺","🛵","🏍",
               "🚔","🚍","🚘","🚖","🚡"]
var emojis2 = ["🐶","🐱","🐭","🐹","🐰",
              "🦊","🐻","🐼","🐻‍❄️","🐨",
              "🐯","🦁","🐮","🐷","🐽"]
var emojis3 = ["🍏","🍎","🍐","🍊","🍋",
               "🍌","🍉","🍇","🍓","🫐",
               "🍈","🍒","🍑","🥭","🍍"]
struct ContentView: View {
    
    @State var emojis = emojis1
    
    @State var emojisCount = 15
    
    var body: some View {
        VStack{
            Text("Memorize!").foregroundColor(.red)
            
            ScrollView{
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                VStack{
                    theme1
                    Text("Car").font(.caption)
                }
                Spacer()
                VStack{
                    theme2
                    Text("animal").font(.caption)
                }
                Spacer()
                VStack{
                    theme3
                    Text("fruit").font(.caption)
                }
            }
            .foregroundColor(.black)
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var theme1: some View {
        Button {
            emojis = emojis1.shuffled()
        } label: {
            Image(systemName: "car")
        }
    }
    
    var theme2: some View {
        Button {
            emojis = emojis2.shuffled()
        } label: {
            Image(systemName: "hare")
        }
    }
    
    var theme3: some View {
        Button {
            emojis = emojis3.shuffled()
        } label: {
            Image(systemName: "applelogo")
        }
    }
    
}

struct CardView: View{
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
