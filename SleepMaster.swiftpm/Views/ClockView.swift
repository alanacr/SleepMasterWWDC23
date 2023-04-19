//
//  ClockView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//
//

import SwiftUI

struct ClockView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .ignoresSafeArea()
            
            VStack {
                Image ("clock")
                    .padding(80)
                
                HStack{
                    CardMainType(cardType: .clock)
                        .padding(.horizontal, 60)
                    
                    NavigationLink (destination: BrainView().navigationBarHidden(true), label: {
                        Image("chevron")
                            .frame(width: 40, height: 73)
                        
                    })
                }
                
                Spacer()
                
                
            }
            
        }
        
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
