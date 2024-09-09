//
//  SettingsView.swift
//  Fructus
//
//  Created by gizem demirtas on 21.08.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //BİZE DIŞARIDAN SAĞLANAN DEĞERLERİ SAKLAYAN ÖZELLİKLER OLUŞTURMAMIZI SAĞLAR.
    //ÖRNEK: Ekran rengi, saat dilimi vs.
    //PRESENTATION MODE İKİ VERİ İÇERİR VE İKİSİDE KULLANIŞLIDIR!
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                VStack (spacing: 20){
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10){
                             Image("logo")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 80, height: 80)
                               .cornerRadius(9)
                        
                           Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more")
                                .font(.footnote)
                        
                                
                            
                    }
                }
                    
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){  //RESTART BUTONU !!!
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    } //: BOX
                    
                    
                }//: VSTACK
                .navigationBarTitle("Settings" , displayMode: .large)
                .navigationBarItems(trailing:  //SAĞ ÜST KÖŞEDEKİ ÇARPI BUTONU İÇİN BUNU YAZDIK.
                                    Button (action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                } //: BUTTON
                )
                .padding()
                
            } //: SCROLL
        } //: NAVIGATION
    
    }
}
    
    // MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
