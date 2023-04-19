//
//  NightInfoView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI

struct NightInfoView: View {
    
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .ignoresSafeArea()
            
            VStack {
                Image ("clock")
                    .padding(80)
                
                HStack{
                    CardMainType(cardType: .night)
                        .padding(.horizontal, 60)
                    
                    NavigationLink (destination: DayInfoView().navigationBarHidden(true), label: {
                        Image("chevron")
                            .frame(width: 40, height: 73)
                        
                    })
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct NightInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NightInfoView()
    }
}
