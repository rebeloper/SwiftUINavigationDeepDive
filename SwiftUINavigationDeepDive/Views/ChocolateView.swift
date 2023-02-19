//
//  ChocolateView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI

struct ChocolateView: View {
    
    var body: some View {
        List {
            Button("Pop") {
                
            }
            
            Button("Pop the last 2") {
                
            }
            
            Button("Pop to index 1") {
                
            }
            
            Button("Pop to root") {
                
            }
            
            #if os(iOS) || os(macOS)
            Button("Present 🍯 sheet") {
                
            }
            #endif
            
            #if os(iOS) || os(watchOS)
            Button("Present 🍯 full screen cover") {
                
            }
            #endif
            
        }
        .navigationTitle("🍫")
    }
}

