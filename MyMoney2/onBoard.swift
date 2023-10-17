//
//  onBoard.swift
//  MyMoney
//
//  Created by Maryam Mohammad on 30/03/1445 AH.
//

import SwiftUI

struct onBordingStep {
          let line1 :String
          let line2 :String
          let line3 :String
}

let onBordingSteps = [
          onBordingStep(line1: ("احنا تطبيق فلوسي ,"), line2: ("نقدم المساعدة لطفلك"), line3: ("لفهم الادارة المالية بطريقة سهلة وذكية")),
          
          onBordingStep(line1: ("كل اللي عليك"), line2: ("تتأكد إن مفهوم الإدارة"), line3: ("المالية واضح لطفلك")),
          
          onBordingStep(line1: ("شرطنا الوحيد : "), line2: ("يكون عند طفلك حصالة"), line3: ("والباقي لا تشيل همه ! "))
]

struct onBoard: View {
          @State var currentStep = 0
          
          
          var body: some View {
                    NavigationView{
                              ZStack{
                                        
                                        Color("GreenBack")
                                                  .ignoresSafeArea()
                                        
                                        
                                        
                                        
                                        TabView(selection: $currentStep ){
                                                  ForEach(0..<onBordingSteps.count ){ it in
                                                            ZStack{
                                                                      Rectangle()
                                                                                .frame(width: 650 , height: 480)
                                                                                .foregroundColor(Color("tc"))
                                                                                .cornerRadius(10.0)
                                                                                .shadow(radius: 10)
                                                                      
                                                                      VStack{
                                                                                Text(onBordingSteps[it].line1)
                                                                                Text(onBordingSteps[it].line2)
                                                                                Text(onBordingSteps[it].line3)
                                                                      }
                                                                      .font(.largeTitle)
                                                                      .frame(width: 650)
                                                                      .bold()
                                                                      .foregroundColor(Color("TextColor"))
                                                                      .tag(it)
                                                                      
                                                                      
                                                            }
                                                  }
                                        }
                                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                        
                                        HStack{
                                                  ForEach(0..<onBordingSteps.count) { it in
                                                            if it == currentStep {
                                                                      Rectangle()
                                                                                .frame(width: 20 , height: 10)
                                                                                .cornerRadius(10.0)
                                                                                .foregroundColor(Color("TextColor"))
                                                            } else {
                                                                      Circle()
                                                                                .frame(width: 10 , height: 10)
                                                                                .foregroundColor(.gray)
                                                            }
                                                  }
                                        }
                                        .padding(.top, 200.0)
                                        
                                        // Spacer()
                                        
                                        if self.currentStep < onBordingSteps.count - 1 {
                                                  
                                                  
                                                  Button("التالي") {
                                                            currentStep += 1
                                                            
                                                  }
                                                  .font(.title)
                                                  .fontWeight(.bold)
                                                  .frame(width: 120, height: 60)
                                                  .background(Color.white)
                                                  .cornerRadius(10)
                                                  .shadow(radius: 10)
                                                  .foregroundColor(Color("TextColor"))
                                                  .padding(.top, 380)

                                        } else {
                                                  NavigationLink(destination: inputScreen()) {
                                                            Text("بدء")
                                                                      .font(.title)
                                                                      .fontWeight(.bold)
                                                                      .frame(width: 120, height: 60)
                                                                      .background(Color.white)
                                                                      .cornerRadius(10)
                                                                      .shadow(radius: 10)
                                                                      .foregroundColor(Color("TextColor"))
                                                  }
                                                  .padding(.top, 380)
                                                  
                                        }
                              }
                    }.navigationViewStyle(StackNavigationViewStyle())
          }
}

#Preview {
    onBoard()
}



/* Button(action:{
 
 if self.currentStep < onBordingSteps.count - 1 {
           currentStep += 1
           
 } else {
           NavigationLink(destination: SavingPage()) {
                     Text("")
           }

 }
 
}) {
 Text(currentStep < onBordingSteps.count - 1 ? "التالي" : "بدء")
           .font(.title)
           .fontWeight(.bold)
           .frame(width: 120, height: 60)
           .background(Color.white)
           .cornerRadius(10)
           .shadow(radius: 10)
           .foregroundColor(Color("TextColor"))
}
.padding(.top, 300.0)*/
