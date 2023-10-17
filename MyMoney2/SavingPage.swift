//
//  ContentView.swift
//  MyMoney
//
//  Created by Maryam Mohammad on 25/03/1445 AH.
//

import SwiftUI
import PhotosUI
import Combine

// prograss code
struct RoundedRectProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 14)
                .frame(width: 500, height: 20)
                .foregroundColor(.white)
                .overlay(Color.black.opacity(0.5)).cornerRadius(14)
            
            RoundedRectangle(cornerRadius: 14)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 500, height: 20)
                .foregroundColor(.pro)
        }
       // .padding()
    }
}


// Sheet code
struct BttomSheetView : View{
    @State var selectedItem: PhotosPickerItem? = nil
    @State var wishName = ""
    @State var wishPrice = ""
    
    var body: some View {
        ZStack(alignment:.top){
            Color("GreenBack")
            VStack{
                Text("إضافة أمنية")                    .font(.largeTitle)
                    .padding(.vertical, 40.0)
                    .foregroundStyle(.black)
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .frame(width: 700 , height: 500)
                    
                    
                         
                        Image("Logo")
                           .resizable()
                           .frame(width: 150.0 ,height: 150.0)
                           .padding([.leading, .bottom], -320.0)
                        HStack{
                            VStack {
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 10)
                                        .frame(width: 250 , height: 50)
                                    
                                    TextField(
                                        "أرغب بشراء",
                                        text: $wishName
                                    )
                                    .disableAutocorrection(true)
                                }
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 10)
                                        .frame(width: 250 , height: 50)
                                    TextField(
                                        "بمبلغ",
                                        text: $wishPrice
                                    )
                                    .disableAutocorrection(true)
                                    .onReceive(Just(wishPrice)) { newValue in
                                        let filtered = newValue.filter{ "٠١٢٣٤٥٦٧٨٩".contains($0)}
                                        if filtered != newValue {
                                            wishPrice = filtered
                                        }
                                        }

                                }
                            }
                            
                            .padding(.leading, 130.0)
                            
                            
                            VStack{
                                Circle()
                                    .foregroundColor(.white)
                                    .padding(.trailing, 49.0)
                                    .shadow(radius: 10)
                                    .frame(width: 200 , height: 200)
                                PhotosPicker(
                                    selection: $selectedItem,
                                    matching: .images,
                                    photoLibrary: .shared()) {
                                        Image(systemName: "plus.circle.fill")
                                            .resizable()
                                            .frame(width: 50 , height: 50)
                                            .padding(.top, 15.0)
                                            .foregroundColor(Color("Purple"))
                                            
                                    }
                                    .padding(.top, -85.0)
                            }
                            
                            
                        }
                        .padding(.top, -150.0)
                        
                        Button(action:{
                        }){
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .frame(width: 95 , height: 55)
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 40 , height: 40)
                                    .foregroundColor(Color("Purple"))
                            }
                            .padding(.top, 180.0)
                        }
                    }
                }
                }
            }
            
        }
        



struct SavingPage: View {
    @State var ShowingBottomSheet = false
    
    var body: some View {
        ZStack {
            Color("GreenBack")
                .ignoresSafeArea()
            
            VStack {
                Text("حصالتي")
                    .font(.largeTitle)
                ZStack (alignment: .top){
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .frame(width: 1175 , height: 600)
                    VStack{
                        ZStack{
                            
                            Rectangle()
                                .foregroundStyle(.white)
                                .shadow(radius: 10)
                                .frame(width: 1175 , height: 70)
                            
                            HStack{
                            

                                Button(action:{
                                    ShowingBottomSheet.toggle()
                                        }){
                                    Text("إضافة أمنية")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Purple"))
                                    
                                    Image(systemName: "plus.app.fill")
                                        .resizable()
                                        .frame(width: 40 , height: 40)
                                        .foregroundColor(Color("Purple"))
                                        
                                        .sheet(isPresented: $ShowingBottomSheet ){
                                            BttomSheetView()
                                        }
                                }
                                Spacer()
                                
                                Text("أمنياتي")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Purple"))
                            }
                            .padding()
                        }
                        HStack(alignment: .top){
                           Spacer()
                            
                            VStack {
                                
                                Image("Logo")
                                    .resizable()
                                    .frame(width: 300 , height: 300 , alignment: .center)
                                Text("٧٠ ريال")
                                    .font(.system(size: 80))
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("Pro"))
                            }
                            
                           .padding()
                           Spacer()
                            
                            VStack{
                                
                                ScrollView{
                                    ZStack(alignment: .top){
                                        
                                        Image("WishColor")
                                            .resizable()
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            .frame(width: 600, height: 150)
                                            .cornerRadius(10.0)
                                        
                                            .overlay(alignment: .topLeading) {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .foregroundColor(Color("check"))
                                                    .padding([.top, .leading], 10.0)
                                                    .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                            }
                                        
                                        VStack{
                                            
                                            HStack {
                                                
                                                Text("١٧٠ ريال")
                                                    .font(.title)
                                                    .padding(.leading, -160.0)
                                                    .foregroundStyle(.white)
                                                
                                               
                                                        Image("bic2")
                                                            .resizable()
                                                            .frame(width: 90 , height: 80)
                                                            .padding(.trailing, -140.0)
                                                            
                                                        
                                                    
                                            }
                                            
                                                ProgressView( value: 0.4)
                                                    .progressViewStyle(RoundedRectProgressViewStyle())
                                                
                                        }
                                        .overlay(alignment: .bottomTrailing) { Image("box")
                                                .resizable()
                                            .frame(width: 50 , height: 50)}
                                    }
                                    
                                    ZStack(/*alignment: .top*/){
                                        
                                        Image("WishColor")
                                            .resizable()
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            .frame(width: 600, height: 150)
                                            .cornerRadius(10.0)
                                        
                                            .overlay(alignment: .topLeading) {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .foregroundColor(Color("check"))
                                                    .padding([.top, .leading], 10.0)
                                                    .frame(width: 50.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                            }
                                        
                                        VStack{
                                            HStack {
                                                
                                                Text("٣٠٠ ريال")
                                                    .font(.title)
                                                    .padding(.leading, -160.0)
                                                    .foregroundStyle(.white)
                                                
                                               
                                                        Image("PS")
                                                            .resizable()
                                                            .frame(width: 80 , height: 60)
                                                            .padding(.trailing, -130.0)
                                                            
                                                        
                                                    
                                            }
                                            
                                            ProgressView( value: 0.2)
                                                    .progressViewStyle(RoundedRectProgressViewStyle())
                                                
                                        }
                                        .overlay(alignment: .bottomTrailing) { Image("box")
                                                .resizable()
                                            .frame(width: 50 , height: 50)}
                                    }
                                    ZStack(alignment: .top){
                                        
                                        Image("WishComplet")
                                            .resizable()
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            .frame(width: 600, height: 150)
                                            .cornerRadius(10.0)
                                        
                                            .overlay(alignment: .topLeading) {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .foregroundColor(Color("GreenBack"))
                                                    .padding([.top, .leading], 10.0)
                                                    .frame(width: 50.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                        VStack{
                                            HStack {
                                                
                                                Text("٦٠ ريال")
                                                    .font(.title)
                                                    .padding(.leading, -160.0)
                                                    .foregroundStyle(.white)
                                                
                                               
                                                        Image("coins")
                                                            .resizable()
                                                            .frame(width: 90.0
                                                                   , height: 90.0)
                                                            .padding(.trailing, -129.0)
                                                            
                                                        
                                                    
                                            }
                                            
                                                ProgressView( value: 1)
                                                    .progressViewStyle(RoundedRectProgressViewStyle())
                                                
                                        }
                                        .overlay(alignment: .bottomTrailing) { Image("box")
                                                .resizable()
                                            .frame(width: 50 , height: 50)}
                                    }
                                    
                                }
                                .padding()

                            }
                            
                            
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}




#Preview {
    SavingPage()
}







/* HStack{
 ZStack{
     Rectangle()
         .foregroundStyle(.white)
         .shadow(radius: 10)
         .frame(width: 480 , height: 70)
     HStack{
         Text("إضافة أمنية")
             .font(.title)
             .fontWeight(.bold)
             .foregroundColor(Color("Purple"))
         
         Image(systemName: "plus.app.fill")
             .resizable()
             .frame(width: 40 , height: 40)
             .foregroundColor(Color("Purple"))
     }
 }
 ZStack{
     Rectangle()
         .foregroundStyle(.white)
         .shadow(radius: 10)
         .frame(width: 700 , height: 70)
     Spacer()
     Text("أمنياتي")
         .font(.title)
         .fontWeight(.bold)
         .foregroundColor(Color("Purple"))
     
     
     
 }
 
}
 
}
*/
