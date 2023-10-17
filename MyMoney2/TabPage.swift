//
//  HomePage.swift
//  MyMoney
//
//  Created by Maryam Mohammad on 28/03/1445 AH.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView{
            
            SavingPage()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("حصالتي")
                    
                    
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("مصروفي")
                    
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("صفحتي")
                    
                }
            
        }
        .accentColor(Color("select"))
        .onAppear(){
            UITabBar.appearance().backgroundColor = UIColor.tc
        UITabBar.appearance().unselectedItemTintColor = .unselect
        }
    }
}

#Preview {
    HomePage()
}
