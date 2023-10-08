//
//  ContentView.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var isComplete: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading) {
                
                Text("Bon Voyage in Style ")
                    .font(.custom("Submaster", size: 62))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Text("Let the classic American riverboat transport you to \(Text("New Adventures ~").foregroundColor(Color("yellow")).font(.custom("Poppins-Bold", size: 20))) and back in time.")
                    .font(.custom("Poppins-Light", size: 20))
                    .foregroundColor(.white)
                    .padding(.top, 2)
                    .padding(.trailing, 0)
                
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    
                    ZStack (alignment: .center){
                        
                        Circle()
                            .stroke(lineWidth: 25)
                            .fill(Color.white.opacity(0.3))
                        
                        Circle()
                            .trim(from: isComplete ? 0.001 : 1, to: 1)
                            .stroke(Color.white.opacity(0.6), style: StrokeStyle(lineWidth: 25, lineCap: .round))
                            .rotationEffect(Angle(degrees: 90))
                        
                        Circle()
                            .foregroundColor(.black)
                        
                        Text("Start")
                            .font(.custom("Poppins-Light", size: 20))
                            .foregroundColor(.white)
                            .onLongPressGesture(minimumDuration: 1.0){ isPressing in
                                if isPressing {
                                    withAnimation(.easeInOut(duration: 1.0)) {
                                        isComplete.toggle()
                                    }
                                }
                            } perform: {
                                NavigationLink("", destination: MapView(), isActive: $isComplete)
                                
                            }
                    }
                    .scaleEffect(isComplete ? 0.8 : 1)
                    .frame(width: 90)
                    .padding(.horizontal, 120)
                }
            }
            .padding(.horizontal, 30)
            .background(
                Image("boatwave")
                    .resizable()
                    .frame(width: 500, height: 900)
                    .ignoresSafeArea()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
