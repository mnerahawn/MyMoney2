//
//  ProfileView.swift
//  MyMoney2
//
//  Created by Reyouf Alqahtani on 02/04/1445 AH.
//

import SwiftUI
import Combine
   
        
        
struct ProfileView: View {
    @State var ChildName: String = "نادر"
    @State var Money : String="٥٠٠٠٠٠"
   
    @State var intValue : Int = 0
    @State var newIntValue : Int = 0
    
    var body: some View {
        
        
        ZStack{
            Color("lightgreen")                                .fontWeight(.bold)
                .ignoresSafeArea()
            
            VStack{
                
                Text("أهلاً  \(ChildName)!")
                    .font(.system(size:60))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("fontColor"))
                    .frame(width:1130,height:70,alignment:.topTrailing)
                    .padding([.trailing, .bottom], -20.0)
                    .padding(37)
                
                ZStack{
                    
                    Rectangle()
                        .shadow(radius: 3)
                    
                        .foregroundColor(.white)
                        .frame(width: 1170 , height: 510.0)
                        .background(.white)
                        .padding(43)
                    HStack(spacing:50.0){
                        Image("wallet")
                            .resizable()
                            .padding(.leading, 50.0)
                            .frame(width:360.0, height: 296.0,alignment:.center)
                            .padding(20)
                        
                        
                        VStack{
                            //card and its content
                            ZStack{
                                Image("Card")
                                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                    .padding(.top)
                                    .frame(width: 400, height: 230)
                                

                                HStack(){
                                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                        .foregroundColor(.white)
                                        .frame(width: 100, height:132 , alignment:.topTrailing)
                                    //input username
                                    TextField("", text: $ChildName)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding(.trailing, 55.0)
                                        .foregroundColor(.white)
                                    .frame(width: 190, height:150 , alignment: .top )}
                                
                                
                                //amount of money
                                HStack(){
                                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                        .foregroundColor(.white)
                                        .padding(.leading, 91)
                                        .frame(width: 120, height:20)
                                    
                                    Text("ريال سعودي")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 150, height:40 , alignment:.center)
                                    
                                    TextField("", text: $Money)
                                        .keyboardType(.numberPad)
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .frame(width: 80, height: 40, alignment: .topLeading)
                                        .onReceive(Just(Money)) { newValue in
                                            let filtered = newValue.filter { "١٢٣٤٥٦٧٨٩٠".contains($0) }
                                            if filtered != newValue {
                                                Money = filtered
                                            }
                                        }
                                    
                                    
                                }
                            }
                            .padding(.top, -15.0)
                            // chart lable
                            Text("مصروفات الأسبوع")
                                .font(.system(size:20))
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .multilineTextAlignment(.trailing)
                                .frame(width:360 ,height:10,alignment:.trailing)
                                .padding(10)
                            // code of the chart
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .border(Color("chartc"), width:3)
                                    .shadow(radius: 10)
                                    .cornerRadius(15)
                                    .padding(.bottom, -14.0)
                                    .foregroundColor(Color.white)
                                    .frame(width: 400, height:
                                            190,alignment: .bottom)
                                //call the page to show the chart.
                              //  NewChart()
                                
                              .frame(width: 300, height: 180)}}}
                             .padding(.trailing, 380.0)}
                
               
                Spacer()
            
                
            }}}}
    
    #Preview
    {
        ProfileView()
    }

