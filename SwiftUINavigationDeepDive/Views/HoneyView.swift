//
//  HoneyView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct HoneyView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    var body: some View {
        List {
            Button("Push 🍪") {
                router.push(.cookieView)
            }
            
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop the last 2") {
                router.pop(.the(last: 2))
            }
            
            Button("Pop to root") {
                router.pop(.toRoot)
            }
            
            Button("Present 🍦 sheet") {
                router.present(.iceCreamViewSheet)
            }
        }
        .navigationTitle("🍯")
        .sheet(for: Destination.iceCreamViewSheet)
    }
}

