//
//  BrainView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI

struct BrainView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                HStack{
                    Image ("brain")
                        .padding()
                        .frame(width: 513, height: 462)
                        .offset(x: 55, y: 10)
                    Image("chevronBrain")
                        .offset(x: -25, y: -150)
                    CardBrainView(cardBrain: "aoi")
                        .frame(width: 397, height: 179)
                        .offset(x: -160, y: -20)
                    
                }
                Spacer()
                HStack{
                    CardMainType(cardType: .brain)
                        .padding(.horizontal, 60)
                    
                    NavigationLink (destination: NightInfoView().navigationBarHidden(true), label: {
                        Image("chevron")
                            .frame(width: 40, height: 73)
                        
                    })
                }
                
                Spacer()
                
            }
            
        }
        
    }
    
}

struct BrainView_Previews: PreviewProvider {
    static var previews: some View {
        BrainView()
    }
}
