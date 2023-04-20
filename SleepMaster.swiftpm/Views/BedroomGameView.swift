//
//  BedroomGameView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct BedroomGameView: View {
    
    @State var count = 0
    var body: some View {
        ZStack {
            Image("bedroomVoid")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            HStack {
                ComponenteView(imagemAtual: "lightOn", novaImagem: "lightOff", count: $count)
                    .scaleEffect(0.5)
                    .offset(x:210, y: -40)
                ComponenteView(imagemAtual: "tvOn", novaImagem: "tvOff", count: $count)
                    .scaleEffect(0.9)
                    .position(x: 750, y: 360)
                    .offset(x:88)
                ComponenteView(imagemAtual: "phoneOn", novaImagem: "phoneOff", count: $count)
                    .scaleEffect(0.3)
                    .offset(x:-130, y: 120)
                ComponenteView(imagemAtual: "windowOn", novaImagem: "windowOff", count: $count)
                    .scaleEffect(1.4)
                    .offset(x:-500, y: -190)
                
            }
            VStack{
                Spacer()
                
                if count >= 4 {
                    NavigationLink (destination: CongratsView().navigationBarHidden(true), label: {
                        Text("Next")
                            .font(.system(size: 24, design: .monospaced))
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 57, alignment: .center)
                            .padding(.horizontal, 30)
                            .foregroundColor(.white)
                            .background(Color(red: 0.271, green: 0.482, blue: 0.616))
                            .cornerRadius(10)
                            .padding(20)
                        
                    })
                    
                }
                
                
            }
        }
    }
}

struct ComponenteView: View {
    @State var imagemAtual: String
    @State var novaImagem: String
    @Binding var count: Int
    @State var isActive = true
    
    var body: some View {
        
        Button(action: {
            imagemAtual = novaImagem
            if isActive {
                count += 1
            }
            isActive = false
            print(count)
            
        }) {
            Image(imagemAtual)
                .resizable()
                .scaledToFit()
        }
    }
}

struct CenarioView_Previews: PreviewProvider {
    static var previews: some View {
        BedroomGameView()
    }
}
