//
//  grocery.swift
//  MyMoney2
//
//  Created by mnerah awn on 01/04/1445 AH.
//

import SwiftUI

struct grocery: View {
    
        @State private var name = ""
        @State private var amount = ""
        @State private var isDropdownVisible = false
        @State private var selectedOption = 0
        let options = ["الاحد", "الاثنين", "الثلاثاء", "الاربعاء","الخميس"]
        var body: some View {
            
            
            ZStack{
                Color("bkColor")
                    .ignoresSafeArea()
                
                VStack{

                
                        
                        Image("flosi")
                    

                            .resizable()
                            .offset(x: 100, y: 5)
                            .frame(width: 228 ,height: 228)
                            .frame(maxWidth: 890, alignment: .trailing)
                            .padding([.top, .leading], 100.0)

                        
                        
                    
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1241, height: 517)
                        .background(.white)
                    
                    Button{
                    } label: {
                        Text(" + ")
                            .foregroundColor(.color1)
                            .frame(width: 100, height: 60)
                            .background(Color.white)
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.regular)
                    .padding(.bottom, 100.0)
                    
                }
                
                Rectangle()
                
                
                //                .padding(.leading)
                    .foregroundColor(.clear)
                    .frame(width: 186, height: 518 )
                    .overlay(
                        Text("الـــبـــقـــالة")
                            .font(.system(size: 30)) // Set the font size to 24 points
                        
                            .foregroundColor(.white)
                            .font(.headline)
                            .rotationEffect(.degrees(-90))
                    )
                
                 
                
                  
                    .background(
                                                       LinearGradient(
                                                       stops: [
                                                       Gradient.Stop(color: Color(red: 0.71, green: 0.88, blue: 0.97), location: 0.31),
                                                       Gradient.Stop(color: Color(red: 0.78, green: 0.7, blue: 0.78), location: 0.60),
                                                       Gradient.Stop(color: Color(red: 0.81, green: 0.64, blue: 0.7), location: 1.00),
                                                       ],
                                                       startPoint: UnitPoint(x: 1, y: -0.08),
                                                       endPoint: UnitPoint(x: 0, y: 1.05)
                                                       )
                                                       )

                    .padding(.trailing,1000)
                    .padding([.top, .leading, .trailing], 89.0)
                
                VStack {
                    Text("في أي يوم اشتريت من البقالة ؟")
                        .foregroundColor(.color1)
                        .padding(.leading, 140.0)
                    HStack {
                        
                        Button(action: {
                            withAnimation {
                                isDropdownVisible.toggle()
                            }
                        }) {
                            HStack {
                                HStack{
                                    Text("اليوم: \(options[selectedOption])"
                                    ).foregroundColor(.color1)
                                        .padding(.trailing, 270.0)
                                    
                                    Picker("Select an option", selection: $selectedOption)
                                    {
                                        ForEach(0..<options.count, id: \.self) { index in
                                            Text(options[index])
                                        }
                                    }
                                    .pickerStyle(MenuPickerStyle())
                                    
                                }
                                
                            }
                            
                            
                            Text("الــيــوم")
                                .foregroundColor(.black)
                                .frame(width: 100, height: 60)
                                .background(Color.white)
                                .foregroundColor(.gray)
                                .cornerRadius(10)
                                .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                                .padding()
                        }
                    }
                    Text("بكم اشتريت ؟")
                        .foregroundColor(.color1)
                        .padding(.leading, 140.0)
                    HStack {
                        
                        TextField("ادخل المبلغ", text: $amount)
                            .padding()
                            .frame(width: 400, height: 60)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                         
                            .padding()
                        Text("المــبــلـغ")
                            .foregroundColor(.black)
                            .frame(width: 100, height: 60)
                            .background(Color.white)
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                            .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                            .padding()
                    }
                }
            }
        }
       
}

#Preview {
    grocery()
}
