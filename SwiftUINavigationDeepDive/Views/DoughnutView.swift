//
//  DoughnutView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct DoughnutView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    var body: some View {
        List {
            Button("Push 🌭") {
                router.push(.junkFoodView(title: "🌭"))
            }
            
            Button("Pop") {
                router.pop()
            }
        }
        .navigationTitle("🍩")
    }
}

