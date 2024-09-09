//
//  ContentView.swift
//  Fructus
//
//  Created by gizem demirtas on 16.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings:Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: //SAĞ ÜST KÖŞEDEKİ BUTON İÇİN BUNU YAZDIK.
            Button (action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            } //: BUTTON
                .sheet(isPresented: $isShowingSettings){ //BİR VIEW DE BİR ALT SAYFA GÖSTERİLMESİNİ SAĞLAR!
                    SettingsView()
                }
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle()) //Bu, navigasyon istiflemesini ve beyaz ekranda kenar çubukları ve kayan paneller olmamasını sağlayacaktır.(iPAD için yazdık bu kodu!)
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
