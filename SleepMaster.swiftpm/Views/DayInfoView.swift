//
//  DayInfoView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//
//


import SwiftUI

struct DayInfoView: View {
    
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image("imageDay")
                    .padding()
                    .frame(width: 513, height: 462)
                Spacer()
                
                HStack{
                    CardMainType(cardType: .day)
                        .padding(.horizontal, 60)
                    
                    NavigationLink (destination: BedroomView().navigationBarHidden(true), label: {
                        Image("chevron")
                            .frame(width: 40, height: 73)
                        
                    })
                }
                
                Spacer()
                
            }
            
        }
        
    }
}


struct DayInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DayInfoView()
    }
}
