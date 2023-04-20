//
//  ClockView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI

struct ClockView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image ("clock")
                    .padding()
                    .frame(width: 513, height: 462)
                Spacer()
                
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
