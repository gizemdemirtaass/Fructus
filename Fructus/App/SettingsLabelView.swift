//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by gizem demirtas on 21.08.2024.
//

import SwiftUI


struct SettingsLabelView: View {
    

    // MARK: PROPERTIES
    var labelText : String
    var labelImage : String
    
    // MARK: BODY
    var body: some View {
        
        
        HStack (spacing: 20){
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
       }
    }
    
   
}


    // MARK: PREVIEW

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
