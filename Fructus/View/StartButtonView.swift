//
//  StartButtonView.swift
//  Fructus
//
//  Created by gizem demirtas on 19.08.2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage ("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button (action: {
            isOnboarding = false
        }) {
            HStack (spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
            
        } //: BUTTON
        .accentColor(Color.white) //Telefonun görünümünü açıktan koyuya veya tam tersine değiştirirken bile düğmelerin görünümünü tutarlı bir şekilde açık tutmaya zorlayacaktır.
        
    }
}


    // MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
