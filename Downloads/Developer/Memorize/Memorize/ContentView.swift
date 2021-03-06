//
//  ContentView.swift
//  Memorize
//
//  Created by revanthAVS on 25/05/20.
//  Copyright © 2020 revanthAVS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack(){
            
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.blue)
        .font(Font.largeTitle)
        .frame(height: 80)
    }
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack() {
                    if card.isFaceUp {
        
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }
    else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

 













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
