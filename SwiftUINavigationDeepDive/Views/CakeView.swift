//
//  CakeView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI

struct CakeView: View {
    
    @State private var didPresentDeepLink = false
    
    var body: some View {
        List {
            Button("Push 🍩") {
                
            }
        }
        .navigationTitle("🎂")
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                deepLink()
            })
        }
    }
    
    func deepLink() {
        guard !didPresentDeepLink else { return }
        Task {
            
            didPresentDeepLink.toggle()
        }
    }
}

