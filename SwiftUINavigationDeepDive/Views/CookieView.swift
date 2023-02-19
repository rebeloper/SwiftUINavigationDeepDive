//
//  CookieView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct CookieView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    var body: some View {
        List {
            Button("Push 🍿") {
                router.push(.popcornView)
            }
            
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop the last 4") {
                router.pop(.the(last: 4))
            }
            
            Button("Pop to index 1") {
                router.pop(.to(index: 1))
            }
            
            Button("Pop to root") {
                router.pop(.toRoot)
            }
            
        }
        .navigationTitle("🍪")
    }
}

