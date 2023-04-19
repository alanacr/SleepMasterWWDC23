//
//  BedroomGameView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct CenarioView: View {
    @State var progresso: Float = 0
    
    var body: some View {
        ZStack {
            Image("bedroomVoid")
                .resizable()
                .scaledToFit()
            
            VStack {
                ComponenteView(imagemAtual: "tvOff", progresso: $progresso)
                ComponenteView(imagemAtual: "clock", progresso: $progresso)
                ComponenteView(imagemAtual: "clock", progresso: $progresso)
                ComponenteView(imagemAtual: "clock", progresso: $progresso)
                ComponenteView(imagemAtual: "clock", progresso: $progresso)
                ProgressView(value: progresso)
            }
        }
    }
}

struct ComponenteView: View {
    @State var imagemAtual: String
    @Binding var progresso: Float
    
    var body: some View {
        Button(action: {
            imagemAtual = "tvOn"
            progresso += 0.2
        }) {
            Image(imagemAtual)
                .resizable()
                .scaledToFit()
        }
    }
}

struct CenarioView_Previews: PreviewProvider {
    static var previews: some View {
        CenarioView()
    }
}

