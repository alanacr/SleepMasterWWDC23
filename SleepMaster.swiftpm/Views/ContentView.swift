//
//  CycleView.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundMain")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(.all)
                
                VStack {
                    Text ("Hello, ")
                        .font(.system(size: 39, design: .monospaced))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("textColorMain"))
                    +
                    Text ("Sleep Master!")
                        .font(.system(size: 39, design: .monospaced))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("textColorMain"))
                    
                    CardHomeView (cardHome: "anything")
                    
                    HStack{
                        Spacer()
                        Image("hiArtur")
                            .padding()
                            .offset(x: 40, y: 20)
                        Image("arrowHome")
                            .padding()
                        Text("Artur, a young man with poor sleep quality")
                            .font(.system(size: 16, design: .monospaced))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 271, height: 48)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .offset(x:-40 ,y: -45)
                            .padding()
                        
                        NavigationLink(destination: CycleView().navigationBarHidden(true), label: {
                            Text("Let's go!")
                                .font(.system(size: 24, design: .monospaced))
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 57, alignment: .center)
                                .padding(.horizontal, 30)
                                .foregroundColor(.white)
                                .background(Color(red: 0.271, green: 0.482, blue: 0.616))
                                .cornerRadius(10)
                            
                        })
                        Spacer()
                    }
                }
            }
        }.navigationViewStyle(.stack)
    }
}



struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
