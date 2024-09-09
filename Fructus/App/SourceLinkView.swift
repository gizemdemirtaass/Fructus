//
//  SourceLinkView.swift
//  Fructus
//
//  Created by gizem demirtas on 20.08.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            
            HStack {
                
             Text("Content Source")
             Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
