//
//  FruitCardView.swift
//  Fructus
//
//  Created by gizem demirtas on 16.08.2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit : Fruit // Herhangi bir başlangıç değeri olmayan bir akışkan model türüdür.
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack (spacing: 20){
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0 , green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                //YUMUŞAK, YARI SAYDAM BİR GÖLGE EKLENDİ!!
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0,
                                         blue: 0, opacity: 0.15), radius: 2, x: 2, y:2)
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
    
    // MARK: - PREVIEW
#Preview {
    FruitCardView(fruit: fruitsData[11])
        .previewLayout(.fixed(width: 320, height: 640))
}
