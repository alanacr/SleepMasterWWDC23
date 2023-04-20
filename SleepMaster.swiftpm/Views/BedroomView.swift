//
//  BedroomView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct BedroomView: View {
    var body: some View {
        
        ZStack{
            Image("bedroomVoid")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                CardMainType(cardType: .bedroom)
                    .padding(.horizontal, 60)
                
                NavigationLink (destination: BedroomGameView().navigationBarHidden(true), label: {
                    Text("Let's go!")
                        .font(.system(size: 24, design: .monospaced))
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 57, alignment: .center)
                        .padding(.horizontal, 30)
                        .foregroundColor(.white)
                        .background(Color(red: 0.113, green: 0.208, blue: 0.341))
                        .cornerRadius(10)
                    
                })
            }
            .padding(80)
        }
    }
}

struct BedroomView_Previews: PreviewProvider {
    static var previews: some View {
        BedroomView()
    }
}
