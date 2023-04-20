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
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image("imageNight")
                    .padding()
                    .frame(width: 513, height: 462)
                Spacer()
                
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
