//
//  SplashScreen.swift
//  MyMoney
//
//  Created by Maryam Mohammad on 30/03/1445 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive = false
    @State var size = 0.8
    @State var opacity = 0.5
    
    var body: some View {
        
        if isActive{
            onBoard()
        } else {
            ZStack{
                Color("GreenBack")
                    .ignoresSafeArea()
                Image("splashR")
                    .resizable()
                    .frame(width: 1200 , height: 900)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear { withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.9
                    }
                    }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
            
        }
        
    }
}

#Preview {
    SplashScreen()
}
