//
//  CycleView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI

struct CycleView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .ignoresSafeArea()
            
            VStack {
                Image ("cycle")
                    .padding(80)
                
                HStack{
                    CardMainType(cardType: .cycle)
                        .padding(.horizontal, 60)
                    
                    NavigationLink (destination: ClockView().navigationBarHidden(true), label: {
                        Image("chevron")
                            .frame(width: 40, height: 73)
                        
                    })
                }
                
                Spacer()
                
                
            }
            
        }
        
    }
}

struct CycleView_Previews: PreviewProvider {
    static var previews: some View {
        CycleView()
    }
}
