//
//  ContentView.swift
//  Dicee Swift UI 2020
//
//  Created by Andrae Henry on 3/16/20.
//  Copyright © 2020 Andrae Henry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  @State  var leftDiceNumber = 1
  @State  var rightDiceNumber = 2
    
    var body: some View {
        ZStack{
        Image("background")
            .resizable()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
            }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("ROLL")
                        .font(.system(size:50))
                        .fontWeight((.heavy))
                        .foregroundColor(.white)
                }
                .background(Color.red)
            }
    }
    }
}
struct DiceView: View {
    
    let n : Int
    var body: some View {
        Image("dice\(n)")
        .resizable()
            .aspectRatio(contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


