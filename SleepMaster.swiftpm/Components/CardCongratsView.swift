//
//  CardCongratsView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct CardCongratsView: View {
    
    var cardCongrats: String
    
    var body: some View {
        ZStack {
            Image("cardCongrats")
            VStack {
                Text("Good Job!")
                    .font(.system(size: 31, design: .monospaced))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 220, height: 37)
                    .multilineTextAlignment(.center)
                Text("You helped regulate Artur's circadian cycle. Today will be a great night's sleep!")
                    .font(.system(size: 31, design: .monospaced))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 700, height: 150)
                    .multilineTextAlignment(.center)
                
                
            }
        }
        
    }
}

struct CardCongratsView_Previews: PreviewProvider {
    static var previews: some View {
        CardCongratsView(cardCongrats: "hello")
    }
}
