//
//  CardScroll.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI

struct CardScroll: View {
    @State var cardsdata: [CardModel] = [
        CardModel(image: "operahouse", title: "Sydney Opera House", text: "Depuis près de 15 ans d'existence, nous sommes à votre écoute pour fournir un travail soigné et de qualité."),
        CardModel(image: "lionstatue", title: "Singapore Lion Statue", text: "Champion du monde de la Coiffure – Washington 1996, votre coiffeur professionnel travaille avec des produits et un partenaire de qualité, American Crew."),
        CardModel(image: "newzea", title: "Auckland Landscape", text: "Notre équipe vous invite à rehausser votre charme grâce à des coupes allant du classique, au ciseau ou à la tondeuse, aux coupes modernes dégradées.")
    ]
    
    var body: some View {
        ZStack {
            ForEach(cardsdata) { card in
                InfiniteStackView(cardsdata: $cardsdata, card: card)
                
            }
        }
    }
}

struct CardsData_Previews: PreviewProvider {
    static var previews: some View {
        CardScroll()
    }
}

struct InfiniteStackView: View {
    @Binding var cardsdata: [CardModel]
    var card: CardModel
    
    @GestureState var isDragging: Bool = false
    @State var offset: CGFloat = .zero
    @State var height: CGFloat = 0
    
    var body: some View {
        VStack {
            Card(title: card.title, text: card.text, image: card.image)
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .zIndex(Double(CGFloat(cardsdata.count) - getIndex()))
        .rotationEffect(.init(degrees: getRotation(angle: 10)))
        .rotationEffect(getIndex() == 1 ? .degrees(-6) : .degrees(0))
        .rotationEffect(getIndex() == 2 ? .degrees(6) : .degrees(0))
        .scaleEffect(getIndex() == 0 ? 1 : 0.9)
        .offset(x: getIndex() == 1 ? -40 : 0)
        .offset(x: getIndex() == 2 ? 40 : 0)
        .offset(x: offset)
        .gesture(
            DragGesture()
                .updating($isDragging, body: {_, out, _ in
                    out = true
                })
                .onChanged({ value in
                    var translation = value.translation.width
                    translation = cardsdata.first?.id == card.id ? translation : 0
                    
                    withAnimation(.easeInOut(duration: 0.3)) {
                        offset = translation
                    }
                })
                .onEnded({ value in
                    let width = UIScreen.main.bounds.width
                    let swipedRight = offset > (width / 2)
                    
                    withAnimation(.easeInOut(duration: 0.5)) {
                        if swipedRight {
                            offset = width
                            removeAndAdd()
                        } else {
                            offset = .zero
                        }
                    }
                })
        )
    }
    
    func getIndex() -> CGFloat {
        let index = cardsdata.firstIndex { card in
            return self.card.id == card.id
        } ?? 0
        
        return CGFloat(index)
    }
    
    func getRotation(angle: Double) -> Double {
        let width = UIScreen.main.bounds.width
        let progress = offset / width
        
        return Double(progress * angle)
    }
    
    func removeAndAdd() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            var updatedCard = card
            updatedCard.id = UUID().uuidString
            cardsdata.append(updatedCard)
            withAnimation(.spring()) {
                cardsdata.removeFirst()
            }
        }
    }
}

