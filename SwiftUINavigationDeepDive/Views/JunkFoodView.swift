//
//  JunkFoodView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct JunkFoodView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    let title: String
    
    var body: some View {
        List {
            Button("Push 🍫") {
                router.push(.chocolateView)
            }
            
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop the last 2") {
                router.pop(.the(last: 2))
            }
        }
        .navigationTitle(title)
    }
}
