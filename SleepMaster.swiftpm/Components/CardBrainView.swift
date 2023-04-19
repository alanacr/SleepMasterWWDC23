//
//  CardBrainView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI

struct CardBrainView: View {
    
    var cardBrain: String
    
    var body: some View {
        ZStack{
            Image("cardBrain")
                .frame(width: 397, height: 179)
            
            Text("The suprachiasmatic nucleus (SCN) is considered the main 'biological clock' of the human body, and is located in the hypothalamus of the brain.")
                .font(.system(size: 20, design: .monospaced))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(width: 360, height: 170)
        }
        
    }
}

struct CardBrainView_Previews: PreviewProvider {
    static var previews: some View {
        CardBrainView(cardBrain: "aoi")
    }
}
