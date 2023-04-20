//
//  ExtraView.swift
//  SleepMaster
//
//  Created by acrn on 19/04/23.
//

import SwiftUI

struct ExtraView: View {
    var body: some View {
        
        ZStack {
            Image("backgroundMain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image ("imageExtra")
                    .padding()
                    .frame(width: 513, height: 462)
                
                    .padding(120)
                
                NavigationLink (destination: ContentView().navigationBarHidden(true),
                                label: {
                    Text("Back to home")
                        .font(.system(size: 24, design: .monospaced))
                        .fontWeight(.semibold)
                        .frame(width: 180, height: 57, alignment: .center)
                        .padding(.horizontal, 30)
                        .foregroundColor(.white)
                        .background(Color(red: 0.271, green: 0.482, blue: 0.616))
                        .cornerRadius(10)
                        .padding(20)
                    
                })
                Spacer()
            }
            
            
            
        }
        
    }
}

struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraView()
    }
}
