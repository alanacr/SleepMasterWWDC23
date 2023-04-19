//
//  DayInfoView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct DayInfoView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .ignoresSafeArea()

            VStack{
                Image("imageDay")
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
                    .frame(height: 180)
                
            }
                
                
            }
        .ignoresSafeArea()
            
        }
    }

struct DayInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DayInfoView()
    }
}
