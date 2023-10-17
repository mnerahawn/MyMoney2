
import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView{
            
            
            ZStack{
                Color("background")
                    .ignoresSafeArea()
                
                
                Rectangle()
                    .offset(x: 0, y: 50)
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 1175, height: 500)
                
                
                VStack{
                    
                    HStack{
                        
                        
                        Image("flosi")
                        
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 228 ,height: 228)
                            .offset(x: -250, y: -20)
                            .padding(.bottom, 0)
                        
                        
                        Text("اهلاً ياسمين  !")
                        
                            .shadow(radius: 2)
                            .font(.system(size: 60))
                            .offset(x: 240, y: -85)
                            .foregroundColor(Color(red: 0.64, green: 0.53, blue: 0.68))
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing)
                        
                    }.padding()
                    VStack{
                        
                        Text("٥٠ ريال  ")
                        
                            .shadow(radius: 2)
                            .offset(x: 70, y: -190)
                            .font(.system(size: 90))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.64, green: 0.53, blue: 0.68))
                            .font(.largeTitle)
                            .fontWeight(.medium)
                        
                    }.padding()
                    
                    HStack{
                        ZStack{
                            NavigationLink(destination: ContentView()) {
                                // button action code
                        
                                Text(" الالعاب")
                            }
                            .frame(width: 250, height: 300)
                            .shadow(radius: 5)
                            .font(.system(size: 50))
                            .padding()
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.87, green: 0.79, blue: 0.89), location: 0.31),
                                        Gradient.Stop(color: Color(red: 0.98, green: 0.88, blue: 0.64), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 1, y: -0.08),
                                    endPoint: UnitPoint(x: 0, y: 1.05)
                                )
                            )
                            .cornerRadius(8)
                            .offset(x: 0, y: -150) // MARK: Raise the button
                            .foregroundColor(.white)
                            
                            Image("gameIcone")
                                .offset(x: 0, y: 10)
                                .frame(width: 286, height: 233)
                                .clipped()
                                .shadow(radius: 10)
                            
                        }
                        ZStack{
                            
                            NavigationLink(destination: moneybox()) {
                                // button action code
                        
                                Text(" الحصالة")
                                
                                
                            }
                            
                            .frame(width: 250, height: 300)
                            .shadow(radius: 5)
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.7, green: 0.71, blue: 0.84), location: 0.31),
                                        Gradient.Stop(color: Color(red: 0.73, green: 0.94, blue: 0.68), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 1, y: -0.08),
                                    endPoint: UnitPoint(x: 0, y: 1.05)
                                )
                            )
                            .cornerRadius(8)
                            .offset(x: 0, y: -150
                            ) // MARK: Raise the button
                            .foregroundColor(.white)
                            
                            Image("moneyIcone")
                            
                                .offset(x: 0, y: 10)
                                .frame(width: 286, height: 233)
                                .clipped()
                                .shadow(radius: 10)
                            
                        }
                        ZStack{
                            
                            NavigationLink(destination: fastfood()) {
                                // button action code
                        
                                Text(" الوجبات السريعة")
                                
                            }
                            
                            .frame(width: 250, height: 300)
                            .shadow(radius: 5)
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.71, green: 0.9, blue: 0.75), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.9, green: 0.84, blue: 0.44), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 1, y: -0.08),
                                    endPoint: UnitPoint(x: 0, y: 1.05)
                                )
                            )
                            .cornerRadius(8)
                            .offset(x: 0, y: -150) // MARK: Raise the button
                            .foregroundColor(.white)
                            
                            Image("burgerIcone")
                            
                                .offset(x: 0, y: 10)
                                .frame(width: 286, height: 233)
                                .clipped()
                                .shadow(radius: 10)
                        }
                        
                        ZStack{
                            
                            NavigationLink(destination: grocery()) {
                                // button action code
                        
                                Text(" البقالة")
                            }
                            .frame(width: 250, height: 300)
                            .shadow(radius: 5)
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .padding()
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
                            
                            .cornerRadius(8)
                            .offset(x: 0, y: -150) // MARK: Raise the button
                            .foregroundColor(.white)
                            
                            Image("sweetIcone")
                            
                                .offset(x: 0, y: 10)
                                .frame(width: 286, height: 233)
                                .clipped()
                                .shadow(radius: 10)
                        }
                        
                    }
                    
                    
                    
                    //
                }.padding()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}
#Preview {
    HomeView()
}

