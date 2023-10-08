//
//  CardView.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        VStack(alignment: .trailing){
            
            HStack(alignment: .top) {
                Text("Create your Itinerary")
                    .font(.custom("Submaster", size: 52))
                    .foregroundColor(.white)
                
                Spacer()
                
                Button {
                   
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .padding(.top, 10)
                }
            }
            .padding()
            
            Spacer()
            
            //Card
           CardScroll()
            
            //Swipe oui ou non
            HStack(alignment: .bottom){
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 80))
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color("yellow").opacity(0.7))
                        .font(.system(size: 80))
                }    
            }
            .padding()
        }
        .background(
            Color("black").opacity(0.95)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
