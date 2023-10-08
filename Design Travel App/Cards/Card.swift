//
//  Card.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI

struct Card: View {
    
    @State var title = "Sydney Opera House"
    @State var text = "Depuis près de 15 ans d'existence, nous sommes à votre écoute pour fournir un travail soigné et de qualité."
    @State var image = "operahouse"
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            VStack {
                
                HStack(spacing: 50) {
                    Image(systemName: "info.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .overlay (
                            Circle()
                                .stroke(lineWidth: 35)
                                .fill(Color.white.opacity(0.3))
                        )
                    
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .overlay (
                            Circle()
                                .stroke(lineWidth: 35)
                                .fill(Color.white.opacity(0.3))
                        )
                    
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .overlay (
                            Circle()
                                .stroke(lineWidth: 35)
                                .fill(Color.white.opacity(0.3))
                        )
                }
                .padding(.trailing, 55)
                .padding(.top, 20)
                
                Spacer()
                
                HStack {
                    
                    Image(systemName: "camera.on.rectangle.fill")
                        .resizable()
                        .frame(width: 40, height: 30)
                    
                    Spacer()
                }
                .padding(.bottom, 2)
                
                Text(title)
                    .font(.custom("Submaster", size: 30))
                    .padding(.trailing, 12)
            }
            .padding()
            .frame(width: 325, height: 425, alignment: .top)
            .foregroundColor(.white)
            .background(
               Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(
                    Rectangle()
                        .fill(
                            LinearGradient(colors: [Color("Cream").opacity(0), Color("Cream").opacity(0.3), Color("Cream").opacity(0.5), Color("Cream").opacity(0.7)], startPoint: .top, endPoint: .bottom)
                        )
                        .padding(.top, 200)
                )
            )
            
            .cornerRadius(20)
            
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
