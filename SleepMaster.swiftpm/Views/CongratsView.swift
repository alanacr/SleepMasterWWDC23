//
//  CongratsView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct CongratsView: View {
    var body: some View {
        ZStack {
            Image("backgroundMain")
                .ignoresSafeArea()
            VStack(spacing: -25) {
                Spacer()
                CardCongratsView(cardCongrats: "hello")
                NavigationLink (destination: CreditsView().navigationBarHidden(true), label: {
                    Text("Extras")
                        .font(.system(size: 24, design: .monospaced))
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 57, alignment: .center)
                        .padding(.horizontal, 30)
                        .foregroundColor(.white)
                        .background(Color(red: 0.902, green: 0.224, blue: 0.275))
                        .cornerRadius(10)
                    
                })
                .offset(y: 65)
                Image("sleepArtur")
                    .offset(x: 300)
                
        
                
            }
            
            
        }
    }
}

struct CongratsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratsView()
    }
}
