//
//  ChocolateView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct ChocolateView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    var body: some View {
        List {
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop the last 2") {
                router.pop(.the(last: 2))
            }
            
            Button("Pop to index 1") {
                router.pop(.to(index: 1))
            }
            
            Button("Pop to root") {
                router.pop(.toRoot)
            }
            
            #if os(iOS) || os(macOS)
            Button("Present 🍯 sheet") {
                router.present(.honeyViewSheet)
            }
            #endif
            
            #if os(iOS) || os(watchOS)
            Button("Present 🍯 full screen cover") {
                router.present(.honeyViewFullScreenCover)
            }
            #endif
            
        }
        .navigationTitle("🍫")
        .sheet(for: Destination.honeyViewSheet, presentationDetents: [.medium, .large], presentationDragIndicatorVisibility: .visible) {
            print("🍯 sheet dismissed")
        }
        .fullScreenCover(for: Destination.honeyViewFullScreenCover)
    }
}

