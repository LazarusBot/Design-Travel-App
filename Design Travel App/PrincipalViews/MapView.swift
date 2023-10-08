//
//  MapView.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        
        VStack{

            HStack{
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "line.3.horizontal.decrease")
                        .foregroundColor(.white)
                        .font(.title)
                }

            }
            .padding(.trailing, 25)
            
            VStack{
                Text("Singapore")
                    .font(.custom("Submaster", size: 32))
                    .foregroundColor(.white)
                Image("lionstatue")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    
            }
            .padding(.trailing, 170)
            .padding(.top, 20)
            
            Spacer()
            
            VStack{
                
                Text("Sydney")
                    .font(.custom("Submaster", size: 32))
                    .foregroundColor(.white)
                Image("operahouse")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    
            }
            .padding(.leading, 190)
            .padding(.top, 130)
            
            Circle()
                .foregroundColor(.green)
                .blur(radius: 150)
                .padding(.trailing, 150)
            
            Spacer()
            
            VStack{
                Text("New Zealand")
                    .font(.custom("Submaster", size: 32))
                    .foregroundColor(.white)
                Image("newzea")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    
            }
            .padding(.trailing, 170)
            .padding(.top, -190)
            
            
            Spacer()
            
            VStack(spacing: 2) {
                
                Image(systemName: "chevron.up")
                    .font(.title2)
                    .foregroundColor(.white)
                Image(systemName: "chevron.up")
                    .font(.title2)
                    .foregroundColor(.white.opacity(0.7))
                Image(systemName: "chevron.up")
                    .font(.title2)
                    .foregroundColor(.white.opacity(0.4))
            }
            
            Text("Create your Itinerary")
                .font(.custom("Submaster", size: 25))
                .foregroundColor(.white)
                .padding(.top, 20)
                .padding(.bottom, 25)
            
        }
        .background(
            Color("green").edgesIgnoringSafeArea(.all)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
