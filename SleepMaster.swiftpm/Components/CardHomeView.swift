//
//  CardHomeView.swift
//  SleepMaster
//
//  Created by acrn on 17/04/23.
//

import SwiftUI

struct CardHomeView: View {
    
    var cardHome: String
    var body: some View {
        
        ZStack{
            Image("cardHome")
            
            VStack(spacing: 16){
                Text("You are the one who knows everything about sleep, and your skills will be needed to help Artur get a good night's sleep. He will finally be able to sleep soundly again.")
                    .font(.system(size: 24, design: .monospaced))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
//                    .padding(12)
                    .multilineTextAlignment(.center)
                
                Text("Come on, Artur needs your help!")
                    .font(.system(size: 24, design: .monospaced))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
//                    .padding(16)
                
            }
            .padding(.horizontal, 16)
            
        } .frame(width: 874, height: 250)
        
    }
}

struct CardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CardHomeView(cardHome: "Anything")
    }
}
