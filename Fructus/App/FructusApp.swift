//
//  FructusApp.swift
//  Fructus
//
//  Created by gizem demirtas on 16.08.2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true //İlk hangi sayfayı göstereceğimizi belirler!
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
