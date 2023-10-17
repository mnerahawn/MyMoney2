//
//  inputScreen.swift
//  MyMoney2
//
//  Created by Reyouf Alqahtani on 02/04/1445 AH.
//

import SwiftUI
import Combine

struct inputScreen: View {
    @State private var name: String = ""
    @State private var expenses: String = ""
    
    var body: some View {
        ZStack {
            Color("lightgreen")
                .ignoresSafeArea()
            
            VStack {
                Text("أهلاً،  عرفنا عليك!")
                    .font(.system(size: 60))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("fontColor"))
                    .frame(width: 1130, height: 70, alignment: .topTrailing)
                    .padding([.trailing, .bottom], -20.0)
                    .padding(3)
                
                ZStack {
                    Rectangle()
                        .shadow(radius: 3)
                        .foregroundColor(.white)
                        .frame(width: 1170, height: 510.0)
                        .background(.white)
                        .padding(43)
                    
                    VStack {
                        VStack{
                            Text("اسمك")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                            
                            
                                .offset(x:220,y:-30)
                            TextField("", text: $name)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(Color("fontColor"))
                                .frame(width:500,height:60,alignment: .center)
                                .shadow(color:.lightGreen, radius: 10)
                                .offset(x:10,y:-50)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            
                            
                        }
                        .padding(20)
                        
                        
                        VStack {
                            Text("مصروفك")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.bottom, 100.0)
                                .frame(width:900.0,height:20 ,alignment: .center)
                                .offset(x:195,y:-20)
                            
                            TextField("", text: $expenses)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width:500,height:60,alignment: .center)
                                .foregroundColor(Color("fontColor"))
                                .shadow(color:.lightGreen, radius: 10)
                                .offset(x:-200,y:-50)
                                .keyboardType(.numberPad)
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: 80, height: 40, alignment: .topLeading)
                                .onReceive(Just(expenses)) { newValue in
                                    let filtered = newValue.filter { "١٢٣٤٥٦٧٨٩٠".contains($0) }
                                    if filtered != newValue {
                                        expenses = filtered
                                    }
                                }
                            
                        }
                        .padding(30)
                        //
                       
                            Button(action: {
                            }) {
                                Image(systemName: "x.circle.fill")
                                    .resizable()
                                    .frame(width: 40 , height: 40)
                                
                             .offset(x:540,y:-351)
                             .foregroundColor(Color("fontColor"))
                        
                                
                            }
                                Button(action: {

                                }) {
                                    Text("التالي")
                                       .font(.title)
                                       .fontWeight(.heavy)
                                        .foregroundColor(Color("fontColor"))
                                        .frame(width: 190, height: 30)
                                    .offset(x:-200,y:10)}
                    
                        }}}}}}
#Preview {
 inputScreen()
}
