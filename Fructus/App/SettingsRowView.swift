//
//  SettingsRowView.swift
//  Fructus
//
//  Created by gizem demirtas on 21.08.2024.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil //BU KOD İLE CONTENT ADINDA STEĞE BAĞLI BİR ÖZELLİK OLUŞTURDUK!
    //VE BU İSTEĞE BAĞLI DEĞİŞKEN, VARSAYILAN NİL DEĞERİYLE BAŞLATILAN BİR DİZE TÜRÜDÜR!
    
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: ("https://\(linkDestination!)"))!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }//: HSTACK
            
        }//: VSTACK
    }
}

#Preview {
    SettingsRowView(name: "Developer", content:"John / Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    
}
#Preview {
    SettingsRowView(name: "Website", linkLabel: "Swift UI Master Class", linkDestination: "www.google.com")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    
}
